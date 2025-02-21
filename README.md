
# Im The Dev    (ITD)

This code allows developers who create many virtual machines to automatically install the most used dependencies in the code

# How to use

# Method 1 :
1. Open PowerShell
2. Execute `iwr -Uri "https://raw.githubusercontent.com/Epicaaron85/imthedev/refs/heads/main/start.sh" -OutFile "$env:TEMP\start.sh"; & bash "$env:TEMP\start.sh"
`

# Method 2 :
1. Open cmd
2. Execute `powershell -Command "Invoke-WebRequest -Uri https://raw.githubusercontent.com/Epicaaron85/imthedev/refs/heads/main/start.sh -OutFile start.sh; Start-Process -FilePath start.sh"
`


# Method 3 (Interface) :
1. Open cmd
2. Execute `mkdir "C:\IMTHEDEV" && curl -L -o "C:\IMTHEDEV\ImTheDev.exe" "https://raw.githubusercontent.com/Epicaaron85/imthedev/main/interface-version/ImTheDev.exe" && curl -L -o "C:\IMTHEDEV\ImTheDev.dll" "https://raw.githubusercontent.com/Epicaaron85/imthedev/main/interface-version/ImTheDev.dll" && start "" "C:\IMTHEDEV\ImTheDev.exe"
`

# Soon

New updates are coming soon with more expenses and a menu to choose which ones to install and which not to install !



# LICENSE

MIT License

Copyright (c) 2025 Epicaaron85

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
