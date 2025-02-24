########################################################################
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::#
#:.       ██╗    ██╗ █████╗ ███╗   ██╗██████╗ ███████╗██████╗        .:#
#:.       ██║    ██║██╔══██╗████╗  ██║██╔══██╗██╔════╝██╔══██╗       .:#
#:.       ██║ █╗ ██║███████║██╔██╗ ██║██║  ██║█████╗  ██████╔╝       .:#
#:.       ██║███╗██║██╔══██║██║╚██╗██║██║  ██║██╔══╝  ██╔══██╗       .:#
#:.       ╚███╔███╔╝██║  ██║██║ ╚████║██████╔╝███████╗██║  ██║       .:#
#:.        ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ╚══════╝╚═╝  ╚═╝       .:#
#:.                                                                  .:#
#:.       ███╗   ███╗██╗███╗   ██╗██████╗    E-Mail: w.m@tuta.com    .:#
#:.       ████╗ ████║██║████╗  ██║██╔══██╗                           .:#
#:.       ██╔████╔██║██║██╔██╗ ██║██║  ██║   GitHub: github.com/     .:#
#:.       ██║╚██╔╝██║██║██║╚██╗██║██║  ██║              wander-mind  .:#
#:.       ██║ ╚═╝ ██║██║██║ ╚████║██████╔╝                           .:#
#:.       ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═════╝      Site: wandermind.xyz  .:#
#::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::#
########################################################################
#                                                                      #
#                               .xinitrc                               #
#  =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-  #
#              Configuration file for starting X sessions              #
#                       with the "startx" command                      #
#                                                                      #
########################################################################



# =-=-=-=-=-=-=-=-=-=-=- SCREEN LAYOUT (OPTIONAL) =-=-=-=-=-=-=-=-=-=-=-

  #  If you want to set a specific screen resolution or layout, you  #
  #  can use the "xrandr" command.                                   #

  #  Example: Set your screen resolution to 1920x1080. You can       #
  #  adjust this based on your monitor setup. This is especially     #
  #  useful for high-resolution displays (e.g., 4K), where you might #
  #  need scaling. You can check available resolutions and output    #
  #  names with the "xrandr" command.                                #

# Basic syntax:
# xrandr --output <output-device> --mode <resolution> --scale <scaling-factor>
# xrandr --output <your-output-device> --mode <resolution>
# xrandr --output HDMI-1 --mode 1920x1080
xrandr --output eDP-1 --mode 1920x1080


# =-=-=-=-=-=-=-=-=-=-=-=- SCREEN SCALING (ZOOM) =-=-=-=-=-=-=-=-=-=-=-=

  #  On 4K monitors (3840x2160), you may want to scale things up     #
  #  for readability. Here's how scaling works for different zoom    #
  #  levels:                                                         #

# 1x Scaling (No zoom, native resolution)
# This is the default, where no scaling is applied.
# xrandr --output HDMI-1 --mode 3840x2160 --scale 1x1

# 2x Scaling (for 4K displays to look like 1080p)
# This scales everything by 2x, making UI elements bigger (high-DPI).
# This makes a 3840x2160 (4K) display behave like 1920x1080 by scale.
# xrandr --output HDMI-1 --mode 3840x2160 --scale 0.5x0.5

# 3x Scaling (makes UI elements even larger)
# This would make the screen behave like 1280x720 (3x zoom).
# xrandr --output HDMI-1 --mode 3840x2160 --scale 0.33x0.33



# =-=-=-=-=-=-=-=-=-=-=- DUAL MONITORS (OPTIONAL) =-=-=-=-=-=-=-=-=-=-=-

  #  If you are using multiple monitors, you can position them       #
  #  relative to each other.                                         #

  #  Example: Position a second monitor (DP-1) to the right of your  #
  #  main HDMI-1 monitor:                                            #

# xrandr --output HDMI-1 --mode 3840x2160 --scale 0.5x0.5 --primary --output DP-1 --mode 1920x1080 --right-of HDMI-1



# =-=-=-=-=-=-=-=-=-=-= KEYBOARD LAYOUT (OPTIONAL) =-=-=-=-=-=-=-=-=-=-=

  #  To set keyboard layout, use the "setxkbmap" command. You can    #
  #  list available keyboard layouts using: localectl list-keymaps   #
  #  Replace "us" with your preferred layout (e.g., "de" for German, #
  #  "fr" for French, "es" for Spanish)...                           #

# setxkbmap us  # Set the keyboard layout to US English
# setxkbmap fr  # Set the keyboard layout to French AZERTY

# List all layouts:
# localectl list-x11-keymap-layouts

# List variants for the layout:
# localectl list-x11-keymap-variants de

# List available switching options:
#localectl list-x11-keymap-options | grep grp:

# Set multiple keyboard layouts, their variants and switching option:
# setxkbmap -layout us,de -variant ,qwerty -option 'grp:alt_caps_toggle'

# Set US and BG (phonetic variant) and switch with ALT + SHIFT
# setxkbmap -layout us,bg -variant ,phonetic -option grp:alt_shift_toggle



# =-=-=-=-=-=-=-=-=-=-=-=-= AUTOSTART PROGRAMS =-=-=-=-=-=-=-=-=-=-=-=-=

  #  You can autostart programs by adding them before the window     #
  #  manager starts. Make sure to add an ampersand (&) after each    #
  #  program to run them in the background.                          #

# Example: Start the network manager applet in the background
# nm-applet &

# Example: Set your wallpaper using `feh` (replace with your image path)
# feh --bg-scale /path/to/your/wallpaper.jpg &

# Example: Start a compositor like picom
# (for transparency and shadow effects)
# You can install picom with: sudo pacman -S picom
# picom &




# =-=-=-=-=-=-=-=-=-=-= START YOUR WINDOW MANAGER =-=-=-=-=-=-=-=-=-=-=-

  #  This is the last command in the file, and it starts your window #
  #  manager. It must be the last line because X will terminate once #
  #  this command finishes. Only one window manager should be        #
  #  started here.                                                   #

# Example for dwm (Dynamic Window Manager):
exec dwm

# Example for i3 (Tiling Window Manager):
# exec i3

# Example for Openbox (Stacking Window Manager):
# exec openbox-session

# Example for xfce4 (A lightweight desktop environment):
# exec startxfce4
