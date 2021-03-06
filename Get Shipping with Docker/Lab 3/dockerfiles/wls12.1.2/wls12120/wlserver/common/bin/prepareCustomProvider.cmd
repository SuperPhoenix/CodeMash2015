@REM utility to prepare custom security provider MBean jar
@REM for use by WLST offline

@ECHO OFF
SETLOCAL

@REM Determine the location of this script...
SET SCRIPTPATH=%~dp0
FOR %%i IN ("%SCRIPTPATH%") DO SET SCRIPTPATH=%%~fsi

@REM Set the MW_HOME relative to this script...
FOR %%i IN ("%SCRIPTPATH%\..\..\..") DO SET MW_HOME=%%~fsi

@REM Delegate to the main script...
CALL "%MW_HOME%\oracle_common\common\bin\prepareCustomProvider.cmd" %*

ENDLOCAL
