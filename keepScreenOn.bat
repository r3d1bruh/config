@echo off
REM Disable screen turn-off (plugged in)
powercfg -change -monitor-timeout-ac 0

REM Disable screen turn-off (on battery)
powercfg -change -monitor-timeout-dc 0

REM Disable sleep (plugged in)
powercfg /change standby-timeout-ac 0

REM Disable sleep (on battery)
powercfg /change standby-timeout-dc 0

REM Turn off hibernation
powercfg -h off

echo Power settings updated. Press any key to exit.
pause > nul
