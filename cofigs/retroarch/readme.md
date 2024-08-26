```ascii
██╗    ██╗ █████╗ ███╗   ██╗██████╗ ███████╗██████╗
██║    ██║██╔══██╗████╗  ██║██╔══██╗██╔════╝██╔══██╗
██║ █╗ ██║███████║██╔██╗ ██║██║  ██║█████╗  ██████╔╝
██║███╗██║██╔══██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗
╚███╔███╔╝██║  ██║██║ ╚████║██████╔╝███████╗██║  ██║
 ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝
███╗   ███╗██╗███╗   ██╗██████╗ E-Mail: w.m@tuta.com
████╗ ████║██║████╗  ██║██╔══██╗
██╔████╔██║██║██╔██╗ ██║██║  ██║ GitHub: github.com/
██║╚██╔╝██║██║██║╚██╗██║██║  ██║         wander-mind
██║ ╚═╝ ██║██║██║ ╚████║██████╔╝
╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═════╝ Site: wandermind.xyz
```

# Here I will describe to you how I configure **RetroArch**

Once you first install *RetroArch* you will get a couple of errors and it will look wierd. We need to fix that. This fix will work only for the current user, not globaly, it's not the recommended method.

## In **~/.config/retroarch/retroarch.cfg**:

Change:
```
assets_directory = "/usr/share/retroarch/assets"        ->      assets_directory = "~/.config/retroarch/assets"
core_updater_show_experimental_cores = "false"          ->      core_updater_show_experimental_cores = "true"
