

REM x86
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars32.bat"
MSBuild wlan.sln /t:clean /p:Configuration=Release;Platform=Win32
MSBuild wlan.sln /t:Rebuild /p:Configuration=Release;Platform=Win32
mt -manifest "wlan.exe.manifest"  -outputresource:"Win32\Release\wlan.exe;#1"
REM x64
call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Professional\VC\Auxiliary\Build\vcvars64.bat"
MSBuild wlan.sln /t:clean /p:Configuration=Release;Platform=x64
MSBuild wlan.sln /t:Rebuild /p:Configuration=Release;Platform=x64
mt -manifest "wlan.exe.manifest"  -outputresource:"x64\Release\wlan.exe;#1"