win11Terminal
%LocalAppData%\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState

Codium Portable
Create a folder named data inside the extracted VSCodium directory.
|- VSCodium-win32-x64
|   |- VSCodium.exe
|   |- data
|   |- bin
|   |- ...

Set current directory to environment variables in cmd
setx PATH "%PATH%;%CD%"
