@echo off
md ..\..\..\..\devel\share\CodeBlocks\images\wxsmith > nul 2>&1
md ..\..\..\..\output\share\CodeBlocks\images\wxsmith > nul 2>&1
copy smithicons\*.png ..\..\..\..\devel\share\CodeBlocks\images\wxsmith\ > nul 2>&1
copy smithicons\*.png ..\..\..\..\output\share\CodeBlocks\images\wxsmith\ > nul 2>&1
exit 0
