@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Thu Mar 10 14:05:05 +0100 2022
REM SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto eebae1edefef4da58b2e4c86bcd2727c --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_ff_rst_behav xil_defaultlib.tb_ff_rst -log elaborate.log"
call xelab  -wto eebae1edefef4da58b2e4c86bcd2727c --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot tb_ff_rst_behav xil_defaultlib.tb_ff_rst -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
