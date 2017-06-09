rem @echo off
cd %1
for /F "delims=" %%i in ('git describe --always --tags "--abbrev=0"') do set git_tag=%%i
for /F "delims=" %%i in ('git describe --always --tags') do set git_revision=%%i
echo // This file is generated by update-version.cmd > %2
echo. >> %2
echo using System.Reflection;>> %2
echo. >> %2
echo [assembly: AssemblyVersion("%git_tag%")]>> %2
