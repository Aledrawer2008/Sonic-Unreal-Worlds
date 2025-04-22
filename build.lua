#!/usr/bin/env lua

--------------
-- Settings --
--------------

-- Set this to true to use a better compression algorithm for the DAC driver.
-- Having this set to false will use an inferior compression algorithm that
-- results in an accurate ROM being produced.
local improved_dac_driver_compression = true

---------------------
-- End of settings --
---------------------

local common = require "build_tools.lua.common"

-- Obtain the paths to the native build tools for the current platform.
local tools, platform_directory = common.find_tools("s1p2bin")

-- Present an error message to the user if the build tools for their platform do not exist.
if not tools then
	print(string.format("\z
		Sorry, the s1p2bin tool for your platform is outdated and needs recompiling.\n\z
		\n\z
		You can find the source code in 'build_tools/s1p2bin'.\n\z
		Once compiled, copy the executable to '%s'.\n\z
		\n\z
		We'd appreciate it if you could send us your binary in a pull request at\n\z
		https://github.com/sonicretro/s1disasm, so that other users don't have this\n\z
		problem in the future.", platform_directory))

	os.exit(false)
end

-- Delete old ROM.
os.remove("s1built.prev.bin")

-- Backup the most recent ROM.
os.rename("s1built.bin", "s1built.prev.bin")

-- Assemble the ROM.
local assemble_result = common.assemble_file("sonic.asm", "s1built.bin", tools.as, "", tools.s1p2bin, improved_dac_driver_compression and "" or " -a", false)

if assemble_result == 'success' then
	assemble_result = common.assemble_file("sonic.asm", "s1built.debug.bin", tools.as, "-D __DEBUG__ -OLIST sonic.debug.lst", tools.s1p2bin, improved_dac_driver_compression and "" or " -a", false)
end

if assemble_result == "crash" then
	print "\n\z
		**********************************************************************\n\z
		*                                                                    *\n\z
		*         The assembler crashed. See above for more details.         *\n\z
		*                                                                    *\n\z
		**********************************************************************\n\z"

	os.exit(false)
elseif assemble_result == "error" then
	for line in io.lines("sonic.log") do
		print(line)
	end

	print "\n\z
		**********************************************************************\n\z
		*                                                                    *\n\z
		*      There were build errors. See sonic.log for more details.      *\n\z
		*                                                                    *\n\z
		**********************************************************************\n\z"

	os.exit(false)
end

-- Append symbol table to the ROM.
local extra_tools, extra_platform_directory = common.find_tools("convsym")
if not extra_tools then
	print(string.format("\z
		Couldn't find 'convsym' utility for your platform.n\z
		\n\z
		Make sure the appropriate executable is installed; if not, compile it from the source code avaliable here:\n\z
		'https://github.com/vladikcomper/md-modules/tree/master/utils/convsym'\n\z
		\n\z
		Once compiled, copy the executable to the '%s' directory of your project.", extra_platform_directory))
	os.exit(false)
end
os.execute(extra_tools.convsym .. " sonic.lst s1built.bin -input as_lst -exclude -filter \"z[A-Z].+\" -a")
os.execute(extra_tools.convsym .. " sonic.debug.lst s1built.debug.bin -input as_lst -exclude -filter \"z[A-Z].+\" -a")


-- Correct the ROM's header with a proper checksum and end-of-ROM value.
common.fix_header("s1built.bin")
common.fix_header("s1built.debug.bin")

if assemble_result == "warning" then
	for line in io.lines("sonic.log") do
		print(line)
	end

	print "\n\z
		**********************************************************************\n\z
		*                                                                    *\n\z
		*     There were build warnings. See sonic.log for more details.     *\n\z
		*                                                                    *\n\z
		**********************************************************************\n\z"

	os.exit(false)
end

-- A successful build; we can quit now.
