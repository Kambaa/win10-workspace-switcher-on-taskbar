# Windows 10 Workspace Switcher (Like on linux) POC test

After starting to work with the virtual desktop on win 10, i wanted to use some quick buttons on the right side of the taskbar to switch workspaces like i do in linux, so i searched and written a simple powershell script. 
This file installs https://github.com/MScholtes/PSVirtualDesktop on your current user and uses it for switching.

## Usage
- Just download and put the `Win10SwitchDesktop.ps1` file on somewhere on your pc
- Create some shortcuts like this:
  - `powershell.exe -ExecutionPolicy Bypass -File "<YOUR_DIRECTORY>\Win10SwitchDesktop.ps1" -MonitorNumber 0`
  use this manually for the first time, giving installation permissions
  - `powershell.exe -ExecutionPolicy Bypass -File -windowstyle hidden "<YOUR_DIRECTORY>\Win10SwitchDesktop.ps1" -MonitorNumber 0`
  added `-windowstyle hidden` for hiding windows, use this for your shortcuts.
  
0 at the end is the index of the virtual desktop, 0 is for the first Virtual Desktop you have added, 1 for the second etc.

![resim](https://github.com/Kambaa/win10-workspace-switcher-on-taskbar/assets/5601326/1dc6e047-87e0-4dc7-8adc-b5aa6f181b1d)
- Run the shortcut and voila! you have switched to another Virtual Desktop if you have any.
- You can hide the file(or move it somewhere else) and use that folder for a toolbar on your taskbar like this
![resim](https://github.com/Kambaa/win10-workspace-switcher-on-taskbar/assets/5601326/3c078758-2ce9-4953-ab4a-109dde106ff2)

## Considerations
It seems it is not that quick, so using CTRL + Win + LEFT/RIGHT Arrow is quicker, but i wanted use this feature the i way i'm used to. 
