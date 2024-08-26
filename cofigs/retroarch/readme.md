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

- Changing assets from global to local:
> assets_directory = "/usr/share/retroarch/assets"  ->      assets_directory = "~/.config/retroarch/assets"

- So that we can see the cores when we update:
> core_updater_show_experimental_cores = "false"    ->      core_updater_show_experimental_cores = "true"

- The directory where the cores will be in:
> libretro_directory = "/usr/lib/libretro"          ->      libretro_directory = "~/.config/retroarch/cores"

- Information about the downloaded cores:
> libretro_info_path = "/usr/share/libretro/info"   ->      libretro_info_path = "~/.config/retroarch/cores/info"

- Menu of the core updater:
> menu_show_core_updater = "false"                  ->      menu_show_core_updater = "true"
