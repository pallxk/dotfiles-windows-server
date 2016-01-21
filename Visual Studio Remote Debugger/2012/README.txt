Visual Studio 2012 and 2013 both have the display name of the installed
service as “Remote Debugger”, although their service names are different. This
causes conflict when installing remote debugger service for 2012 and 2013 at
the same time.

This is why this guide and script come out.

See
https://zzz.buzz/notes/visual-studio-remote-debugger/
for details.


## 1. Download "Remote Tools for Microsoft Visual Studio 2012"

### Download Page:

https://www.microsoft.com/en-us/download/details.aspx?id=38184

### Direct Link:

- [rtools_setup_x64.exe](https://download.microsoft.com/download/4/1/5/41524F91-4CEE-416B-BB70-305756373937/VSU4/rtools_setup_x64.exe)
- [rtools_setup_x86.exe](https://download.microsoft.com/download/4/1/5/41524F91-4CEE-416B-BB70-305756373937/VSU4/rtools_setup_x86.exe)
- [rtools_setup_arm.exe](https://download.microsoft.com/download/4/1/5/41524F91-4CEE-416B-BB70-305756373937/VSU4/rtools_setup_arm.exe)


## 2. Install the Remote Debugging Service

Run [msvsmon110.reg].


## 3. Restart


## 4. Configure the Service

Run `services.msc`, locate "Visual Studio 2012 Remote Debugger" and do necessary configuration.

