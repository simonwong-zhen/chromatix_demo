:: #########################################################################
:: # File Name: simulation.sh
:: # Author: Alvin
:: # mail: shiyunfeng@huaqin.com
:: # Created Time: Thu 20 Feb 2019 09:46:02 AM CST
:: #########################################################################

@echo off
set /p "fileName=Input the image name(such as MCC_1x):"
set a=0
setlocal EnableDelayedExpansion

ren *.RAWMIPI *.RAW
ren *.YUV420NV12 *.YUV

if defined fileName (
	for %%n in (*.RAW) do (
		ren "%%n" "!fileName!_!a!.RAW"
		set /A a+=1
	)
) else echo "Just rename the files"
)

set a=<nul

timeout /t 1