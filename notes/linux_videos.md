# Linux videos to watch by the great trio (and others)

1. Notes:
- To avoid system crashesh, never update via a graphical environment to prevent ocasional linux bricking. Always use a **TTY**, ctr + alt + f1-f7, then update, when done, go back to GUI.
- PeaZip the best!
- Terminals (DT) Alacritty, Kitty - great. Alacritty is more basic and lightweight, kitty is more fully fratured. st, Konsole - good. Konsole is mixed with KDE libraries, so only great for KDE use, st only downside is you have to compile and patch it.
- 

## *NOOB* tier

### DT

#### Terminal

##### File Names
https://www.youtube.com/watch?v=Wu0CxdflECY

Rule #1: Name every file just with lower-case. Some OS-es are case insensitive, like MS Windows, so *File1* & *file1* are the same to it.

Rule #2: Don't use spaces. Spaces do not belong in file names. Use eather **-** or **_** instead.

Rule #3: Don't use special characters, like !,$,/,&....

Rule #4: Always keep the date format consistant. It should always be in format *ISO 8601* with command **date -I**, so `YYYY-MM-DD`.

```bash
$ perl-rename 'y/A-Z/a-z/' * # Rename all files in a folder to lowercase
                             # In non-Arch distros, use *rename*, not *perl-rename*
$ perl-rename 'y/ /_/' * # Replace all spaces with underscore
```

##### Man Pages Versus Info Pages (DT)
https://www.youtube.com/watch?v=_SzvpccZqDg

Manuals are at the core of your programs, because they describe all of their possibilities. We have 4 main types of manuals:

1. **man**

**man** pages come from the 70's (first man page is from 1971), and they are the defacto Unix-like-OSes manuals. To view your `man` pages in color, you can open them with `neovim`. To do so, add this line to the *.bashrc*:

> export MANPAGER="nvim + Man!

Don't forget to source your .bashrc after saving!

```bash
$ source ~/.bashrc
$ man man
$ man ls
```

2. **info**

**info** pages are from the *GNU* project, all the GNU utils have info pages. Lots of other programs also have info pages, but some of them just copy the *man* pages there. To get started and learning about the info pages just write "info", and you will be taken to the home page. They have hyperlinks.

```bash
$ info
$ info cp
```

3. **help**

To get only a shortened version of the *man* pages for programs, mainly just the options, use the **--help** flag:

```bash
$ find --help
```

4. **tldr**

Gives a small list of 5-10 most used options for a program, and their description. Not many programs have them.

```bash
$ tldr
$ tldr rm
$ tldr find
```

##### Shell-Color-Scripts And Dmscripts!

```bash
$ yay -S shell-color-scripts
$ man colorscript # Man page by DT
$ colorscript # lists main functions
$ colorscript -r # Displays random colorscript
$ colorscript -a # Displays all colorscript
$ colorscript -l # Displays a list of colorscripts
```

Add `colorscript -r` to .bashrc to run automatically.

#### Arch

##### How To Get An Offline Copy Of The Arch Wiki
https://www.youtube.com/watch?v=EkvooLr9mdw

First of all, we need the Arch-Linux wiki. There is a package for that:

```bash
$ sudo pacman -S arch-wiki-docs
```

This will keep and ofline copy of the Arch-wiki in both HTML and text in */usr/share/doc/arch-wiki/...*. You can view the files by *cd*-ing into the HTML directory, and opening what ever page you want with firefox for example. All the hyperlinks will work for inside the Arch-wiki.

We can also download a search utility for the Arch-wiki. We can download and use it as so:

```bash
$ sudo pacman -S arch-wiki-lite # Install the search utility
$ wiki-search xmonad # Search for any string to be found in the wiki
$ wiki-search ext4
$ wiki-search systemd
```

##### Enabling A Firewall Is Easy In Linux
https://www.youtube.com/watch?v=JzpdC-4BEo0

```bash
$ sudo pacman -S ufw # Install the UFW Firewall
$ sudo pacman -S gufw # Optionally install the graphical version of UFW too.
$ sudo systemctl enable ufw.service # Enable the UFW systemd service
$ sudo systemctl start ufw.service # Start the UFW systemd service
$ sudo ufw enable # Activate and enable on system startup
$ sudo ufw app list # Displays all the apps the UFW can pass data through
$ sudo
```
# NOT COMPLETE !!!!!!!!!!


#### Arch

- - Virt-Manager Tips and Tricks from a VM Junkie
https://www.youtube.com/watch?v=9FBhcOnCxM8

- Stop Using Google! Use These Search Engines Instead.
https://www.youtube.com/watch?v=xxnqhnZcA5A

- How To Autostart Programs On Linux
https://www.youtube.com/watch?v=wZl55yDBD8A

- Sync Files Across All Your Devices With Syncthing
https://www.youtube.com/watch?v=i6LuV7Pl2YU

- Easily Add Startup Sounds To Your Linux Desktop
https://www.youtube.com/watch?v=GZxnc9g-pUc

- Nuclear Music Streaming App For Windows, Mac, Linux
https://www.youtube.com/watch?v=79UImvGueV0

- Searching For The Right Minimal Browser
https://www.youtube.com/watch?v=b8kxdiskGzI

- Announcing The Pulsar Text Editor (Continuing the Legacy of Atom)
https://www.youtube.com/watch?v=WA1c_S6Zsu4

- How To Save Your Desktop Notifications
https://www.youtube.com/watch?v=ulunAkEW9XU

- A Beginner's Guide To Gimp
https://www.youtube.com/watch?v=YHwnlgD18kE

- Give Boring Video Cinematic Color Grading With LUTs
https://www.youtube.com/watch?v=YRlhH1wT8lY- How To Get An Offline Copy Of The Arch Wiki
https://www.youtube.com/watch?v=EkvooLr9mdw

- The Spirit Of Audacity Lives On
https://www.youtube.com/watch?v=EcUvhQcKp00

- Five Screenshot Applications For Linux
https://www.youtube.com/watch?v=S4Qx-mKdVaw

- Git Annex Is The Coolest Program You've Never Heard Of
https://www.youtube.com/watch?v=p0eVyhv2rbk

- Customize Your Linux Desktop With A Video Wallpaper
https://www.youtube.com/watch?v=pFkipMkkWeg

- All That Software On My PC. What Do I Actually Use?
https://www.youtube.com/watch?v=_UNRVybAJTs

- Attention Arch Users! Replace 'Yay' With 'Paru'.
https://www.youtube.com/watch?v=w3j3tivcm50

- Rust Programs Every Linux User Should Know About
https://www.youtube.com/watch?v=dQa9mveTSV4

- The Right Wallpaper Is The Key To A Beautiful Desktop
https://www.youtube.com/watch?v=GIjO6F4F2UQ

- How To Change Your Themes In Linux
https://www.youtube.com/watch?v=x_Mid3_1Uzo

- Enabling HTTPS On Your Website With Let's Encrypt
https://www.youtube.com/watch?v=kmsQnO5aJIM

- Making YouTube Thumbnails In Gimp
https://www.youtube.com/watch?v=WyS6GxHNAvY

- Disable SSH Root Login For Improved Security
https://www.youtube.com/watch?v=Bz3QK5Esg5E

- Move Your Home Directory To A Second Drive
https://www.youtube.com/watch?v=tEnnEhziLn8

- Install Android On A Real Computer With Android x86
https://www.youtube.com/watch?v=o6bIoGR8cVw

- Nitrogen Is A Fast And Lightweight Wallpaper Utility
https://www.youtube.com/watch?v=V4Kh2JBrpO0

- Find And Locate Your Files
https://www.youtube.com/watch?v=BZ5gsFiIKOQ

- Find Duplicate Files On Linux With FSlint
https://www.youtube.com/watch?v=T4gtBl1LV_A

- What Are Linux Users Putting In Their Config Files?
https://www.youtube.com/watch?v=P7Jd0iNSCQA

2. Window Managers

- The SDDM Login Manager Has So Many Amazing Themes
https://www.youtube.com/watch?v=2p7FINJSlAk

- Theming My Login Screen For Maximum Gains (sddm)
https://www.youtube.com/watch?v=16nduwlYioc

3. Shell

- Learn The Linux Terminal In 30 Minutes
https://www.youtube.com/watch?v=PeCBpI1hT2Q

- Beginner's Guide To The Linux Terminal
https://www.youtube.com/watch?v=s3ii48qYBxA

- Essential Linux Commands - uname, hostname, basename, dirname & logname
https://www.youtube.com/watch?v=2zT37cVNR1w

- Essential Linux Commands - Cat, Tac and Tee
https://www.youtube.com/watch?v=KL29jcWu-1E

- Learn These 3 Commands To Go From Terminal Noob To Power User
https://www.youtube.com/watch?v=0AfPcxOoY4w

- Commands To Shutdown And Reboot On Linux
https://www.youtube.com/watch?v=BdRIhFcf4Do

- Essential Keybindings For Bash, Fish and Zsh
https://www.youtube.com/watch?v=XY5qCQcrHns

- Give the 'bat' command wings with 'bat-extras'
https://www.youtube.com/watch?v=ywXVGH-QyMc

- Three Amazingly Useful Linux Commands (cmp, diff, tput)
https://www.youtube.com/watch?v=Qj0FMHlrsqo

- Find Your Most Used Terminal Commands (Bash, Fish, Zsh)
https://www.youtube.com/watch?v=vc5X1Kygat0

- A PDF Viewer With Vim Like Bindings And Configuration
https://www.youtube.com/watch?v=y7C654DPAvs

- Create Impressive Slide Shows With This Powerful Tool
https://www.youtube.com/watch?v=SJCo7dF4LYI

- The Bash "test" Command Tutorial
https://www.youtube.com/watch?v=Eko7V6qboYM

- 3 Command Line Apps To Search The Web
https://www.youtube.com/watch?v=RvzY3gQsLLk

- Learning Awk Is Essential For Linux Users
https://www.youtube.com/watch?v=9YOZmI-zWok

- Learning Sed Is Beneficial For Linux Users
https://www.youtube.com/watch?v=EACe7aiGczw

- Three Incredibly Useful Command Line Tools (shuf, sort, uniq)
https://www.youtube.com/watch?v=31hGtM4s5JE

- Two Powerful Command Line Utilities 'cut' And 'tr'
https://www.youtube.com/watch?v=_0IFtMFYroU

- The Beginner's Guide To SSH
https://www.youtube.com/watch?v=2QXkrLVsRmk

- Creating Partitions In Linux Using fdisk (and other tools)
https://www.youtube.com/watch?v=LPYfoFSXB9A

- Gorgeous Color Schemes For Terminals And Text Editors
https://www.youtube.com/watch?v=xGJOsvK4o6k

- Multiple Color Themes In Dmenu And Other Programs
https://www.youtube.com/watch?v=Wv6SydEbBio

- Getting Started With Git and GitLab
https://www.youtube.com/watch?v=r4CyUAFMUcY

- Got Text Files Too Big To Work With? Split 'Em Up!
https://www.youtube.com/watch?v=JEERZBP4SNE

- Using Htop To Monitor Your System
https://www.youtube.com/watch?v=DVapUamvqO8

- The Only Password Manager I Can Trust
https://www.youtube.com/watch?v=qlJ6U9SQNyQ

- Chat About Linux And Open Source on Matrix and IRC
https://www.youtube.com/watch?v=U5Csn87SpNs

- Ed Is The Standard Text Editor For Unix/Linux
https://www.youtube.com/watch?v=Zpdo6We-_e0

- So Many Linux Terminal Commands Do The Same Thing
https://www.youtube.com/watch?v=eNvUEpO43a0

- Shell Aliases Every Linux User Needs
https://www.youtube.com/watch?v=4v4Mcncvsac

- Lock Your Terminal Sessions With Vlock
https://www.youtube.com/watch?v=_MCJkJ1IsD8

- Bash Script For Listening To Online Radio
https://www.youtube.com/watch?v=ZBNrHaHK3gM

- Trick Out Your Terminal With Shell Color Scripts
https://www.youtube.com/watch?v=hoVR5CJ_eAM

- Tools For Renaming Files In Linux
https://www.youtube.com/watch?v=8SMnfgThlbM

- Play Music In Your Terminal With Music On Console
https://www.youtube.com/watch?v=oLqrJOMScjU

- Mounting Remote Filesystems With SSHFS
https://www.youtube.com/watch?v=-0jyrvMl0Ic

- rTorrent Is A Great Terminal Based BitTorrent Client
https://www.youtube.com/watch?v=2n93ioqHf-U

- Bashtop Is An Htop Alternative Written In Bash
https://www.youtube.com/watch?v=A6fdSHtPHAM

- Generate Random Manpages To Learn Linux
https://www.youtube.com/watch?v=vrN5SPeVUu0

- Ten Attractive Fonts For Your Terminal Or Text Editor
https://www.youtube.com/watch?v=nv40SUNH8Iw

- Search For Patterns Within Files With Grep
https://www.youtube.com/watch?v=N05sWPgj-44

- Let's Share Our Favorite Bash Aliases
https://www.youtube.com/watch?v=_NRJU37DQLM

- Adding And Removing Swap Files Is Easy In Linux
https://www.youtube.com/watch?v=tGrzyFdUPFk

- Font Management On Linux
https://www.youtube.com/watch?v=rLZk7cWbycI

- A Linux Shell Prompt That's Out Of This World!
https://www.youtube.com/watch?v=LDLisRPAC_g

- Replace Your Bloated Image Viewer With SXIV
https://www.youtube.com/watch?v=R20ie57v5XU

- Kitty Is A Fast And Feature Rich Terminal Emulator
https://www.youtube.com/watch?v=TTzP2zYJn2k

- Read Your RSS Feeds With NewsFlash
https://www.youtube.com/watch?v=KBAmviddh4A

- Gemini Is What The Web Should Have Been
https://www.youtube.com/watch?v=Iq1k_FCWPXk

- Some Additional Thoughts About Gemini And Amfora
https://www.youtube.com/watch?v=i-iZ3R9U5ug

- My Personal Website Will Now Be A Gemini Capsule
https://www.youtube.com/watch?v=aklF1v8v2Mk

- Crypto Currency Rates From The Command Line
https://www.youtube.com/watch?v=aB-1DlaLEOo

- Newsboat RSS Reader - Not Just For News Feeds
https://www.youtube.com/watch?v=CJXdQTGm1jg

- Zipping Your Files In Linux
https://www.youtube.com/watch?v=zjI-A3EYzQ4

- LSD on Linux - the next gen "ls" command
https://www.youtube.com/watch?v=cz25mFcAOwU

- Command Line Shenanigans - Tomfoolery In The Terminal
https://www.youtube.com/watch?v=_uJImlV-3os

- Reddio - Reddit From The Command Line
https://www.youtube.com/watch?v=aLLY6C0Wvyc

- 4Chan At The Command Line
https://www.youtube.com/watch?v=5xqi-L3cu2U

- Chown, Chmod and Shell Aliases
https://www.youtube.com/watch?v=fguV653wfqY

- Command Line Tricks With Caret And Exclamation
https://www.youtube.com/watch?v=9B703VoFGLM

- File Globbing In Linux
https://www.youtube.com/watch?v=hQyXuuBbCOo

- Fish Is A Modern Shell For The Sophisticated User
https://www.youtube.com/watch?v=ux1SP9B5lSQ

4. VIM

- Why No One Can Answer The "Vim Versus Emacs" Question
https://www.youtube.com/watch?v=scBBjZcy6fc

- The Absolute Basics of Vim (It's Not THAT Hard!)
https://www.youtube.com/watch?v=9wyIECjwAio

- Vim Can Save You Hours Of Work
https://www.youtube.com/watch?v=bshMXXX40_4

- Read Manpages With Less, Bat, Vim or Neovim
https://www.youtube.com/watch?v=ab3rY0X5kD4

- Bash Scripting - Variables, Arrays, If-Then-Else
https://www.youtube.com/watch?v=xhI1qXUrAHw

- Completing Our Bash Script - More With Variables, Arrays And If-Then Statements
https://www.youtube.com/watch?v=f3KwYamM4_M

- Listen To Podcasts In The Terminal With Castero
https://www.youtube.com/watch?v=OGQ0_fza9CQ

### Luke Smith

#### Arch

- How to Mount Android Phones in Linux
https://www.youtube.com/watch?v=lcmJg4OfKzs

- The Bible on the Command Line (KJV, Greek, and Latin Vulgate)
https://www.youtube.com/watch?v=BCiJO8BaSSk

- Automatically adding transparency and removing whitespace from images
https://www.youtube.com/watch?v=D8pcvkRsx1g

- Using `sed` and Regular Expressions (Unix/Linux command line)
https://www.youtube.com/watch?v=QaGhpqRll_k

- Linux Terminal: Get Memory, Temp, CPU & Make Them Useful!
https://www.youtube.com/watch?v=MNwpdqD_I8Y

- zathura: A vim-based minimalist PDF/djvu/ps/epub/comic book reader
https://www.youtube.com/watch?v=V_Iz4zdyRM4

- Making Your Own QR codes!
https://www.youtube.com/watch?v=2WTljV8_9S8

- GIMP!: Basics of Image Editing and Manipulation
https://www.youtube.com/watch?v=5m8Oaz8XWVI

- Syncthing for Syncing Both Computers & Phones
https://www.youtube.com/watch?v=8bHdcfVzrgk

- Why Vim Doesn't Need the Mouse
https://www.youtube.com/watch?v=tQCRVkSFFEc

- A Vid in which Vim Saves Me Hours & Hundreds of Clicks
https://www.youtube.com/watch?v=hraHAZ1-RaM

- Uh, What are RSS feeds? NEWSBOAT
https://www.youtube.com/watch?v=dUFCRqs822w

- Basic File Encryption with GPG key pairs!
https://www.youtube.com/watch?v=DMGIlj7u7Eo

- Selecting terminal URLs with URLview
https://www.youtube.com/watch?v=IgzpAjFgbCw

- ffmpeg: Making a Picture Slideshow without a Video Editor!
https://www.youtube.com/watch?v=9U29pLrCfms

- I Encrypt All My USB Drives with LUKS.
https://www.youtube.com/watch?v=ZNaT03-xamE

- How we can reach Normies with RSS
https://www.youtube.com/watch?v=hpZBYcD3ysY

- Matrix vs. XMPP: Which is Better for Actually Secure Messaging? (Unlike Telegram, Whatsapp, etc.)
https://www.youtube.com/watch?v=KkwXtWtVj3w

- Creating a Monero Wallet to Receive Money
https://www.youtube.com/watch?v=qPNxca_KMww

- I love classic ThinkPad Keyboards so much, I got another one! (Lenovo ThinkPad Travel Keyboard)
https://www.youtube.com/watch?v=vhAJKW_bhH4

- I love classic ThinkPad Keyboards so much, I got another one! (Lenovo ThinkPad Travel Keyboard)
https://www.youtube.com/watch?v=vhAJKW_bhH4

- rsync is a Based File Sync Program (& if you don't use it, you're wrong.)
https://www.youtube.com/watch?v=iTnWIKHtOnA

- Using Bash and the Terminal to understand files
https://www.youtube.com/watch?v=TbxwBt4Ik5E

#### R Markdown and LaTeX

- An Intro to R Markdown
https://www.youtube.com/watch?v=4J5a0JWIF-0

- The Virgin LaTeX vs. the CHAD R Markdown!
https://www.youtube.com/watch?v=LWScm5WI3fo

- LaTeX tutorials in Like Smith Folder

- How I Learned to Stop Worrying and Love LaTeX!
https://www.youtube.com/watch?v=lQ-UCI9nmis

- Making a Resume with some LaTeX Magic (Part 1)
https://www.youtube.com/watch?v=VjsX4tznW40

- Making a Resume with some LaTeX Magic (Part 2)
https://www.youtube.com/watch?v=o5-BZ7JmYWk

- StarDict and Sdcv for Offline Dictionaries
https://www.youtube.com/watch?v=hTVX2_bcICg

- My Dank vim & LaTeX Setup (wordcucks BTFO once again)
https://www.youtube.com/watch?v=Mphdtdv2_xs

- Minimalist Boomer rants about R Markdown & LaTeX
https://www.youtube.com/watch?v=RS2Iiql9nqo

- High-Intellect Mathematical Formatting with eqn! (groff and troff)
https://www.youtube.com/watch?v=sp0qgpeG6EY

- groff/troff: MUH MINIMALIST Documents
https://www.youtube.com/watch?v=w8EKH_fjmXA

- Typing Special Characters in vim: My Way!
https://www.youtube.com/watch?v=WPvvOEiiF28

- Automatic Markdown Website and Résumé/CV with Pandoc
https://www.youtube.com/watch?v=HggKRBvjIsQ

- Stats in R: Basics of a Beefy Calculator (Tutorial and Introduction)
https://www.youtube.com/watch?v=WlCWQrKQQI4

- Playing around with Basic R Functions!
https://www.youtube.com/watch?v=pgRvPNo6HaY

- Basics of R Dataframes! Subsetting, Columns, Ifelse
https://www.youtube.com/watch?v=DDzVtu24dbk

- Vim's built-in Spell-Checker, Corrections and Multilingual Dictionaries!
https://www.youtube.com/watch?v=ez1XBUqbS68

- SC-IM: Vim-based Terminal Spreadsheet Editor!
https://www.youtube.com/watch?v=K_8_gazN7h0

- The Easiest Way to Make Presentations! (Pandoc + Markdown)
https://www.youtube.com/watch?v=dum7q6UXiCE

- vim and LaTeX do Ancient Rig Veda Wisdom together!
https://www.youtube.com/watch?v=yNOkCYuPt3E

- How to Install, Use and Extend LaTeX
https://www.youtube.com/watch?v=NwnYHoNtfJ0

- How vim Makes my Daily Life Easier
https://www.youtube.com/watch?v=NzD2UdQl5Gc

- Easy Custom Formatting in LaTeX with Macro Functions!
https://www.youtube.com/watch?v=rvgP7IMeUn8

- Making a Pro Presentation with LaTeX's Beamer!
https://www.youtube.com/watch?v=zEjBCQhND2c

- Luke writes Qualifying Paper in muh Arch Linux Rice (unixporn + Linguistics)
https://www.youtube.com/watch?v=fEY5qkgH3fo

- LaTeX: Images, Figures, Wrapping and the Logic Behind Them
https://www.youtube.com/watch?v=zgThRPjy-vw

- vim Macros: Why and How-To!
https://www.youtube.com/watch?v=wRFEBw02aT8

- Start Turning vim into a /comfy/ IDE!
https://www.youtube.com/watch?v=Q4I_Ft-VLAg

- After Vimtutor: Some basic vim editing tips!
https://www.youtube.com/watch?v=jUfw7aHD_xY

- Vim Alchemy with Macros
https://www.youtube.com/watch?v=3eyzINMjlEk

- Vim Tips You Probably Never Heard of
https://www.youtube.com/watch?v=bQfFvExpZDU

- Vim Diesel's OFFICIAL Vimtutor Let's Play/Commentary! (1 HOUR+ Special)
https://www.youtube.com/watch?v=d8XtNXutVto

- *Literally* TIME TRAVELING in Vim (and other tips)
https://www.youtube.com/watch?v=X6tvJDc5LpQ

- Doing some real-world work in VIM!
https://www.youtube.com/watch?v=mH1GGI2Jpbs

### Mental Outlaw

- How to Secure Your Home Wifi Network🛡️🌐🏠 (and other internet security tips)
https://www.youtube.com/watch?v=jmI_YvMMN0A

- How Data Recovery Works (its usually not that complicated)
https://www.youtube.com/watch?v=zu-iyXm9Xnk

- How TCP Connections Work
https://www.youtube.com/watch?v=exnAlOT4S4o

- How Ethereum Works
https://www.youtube.com/watch?v=x53iT9vfGO4

- Introduction To I2P
https://www.youtube.com/watch?v=KhG29riqVUE

- SSD Upgrade for ThinkPad W500
https://www.youtube.com/watch?v=l74Su0tIcXs

#### Arch

- GNU+Linux - The full Linux Picture
https://www.youtube.com/watch?v=spopCHE-kFc

- Three Fast and Simple Ways to Enhance Your Browsers Privacy and Security.
https://www.youtube.com/watch?v=n0kl6t7U7K4

- How to setup TOR on Linux
https://www.youtube.com/watch?v=L51mOI3EyaM

- Artix Linux - Installation and Review
https://www.youtube.com/watch?v=Md-D3f0LN6s

- Managing Packages on Arch Based Distros with Pacman
https://www.youtube.com/watch?v=qPq1MXXqCaw

- Test your Internet Speed at the Command Line In Linux
https://www.youtube.com/watch?v=pGx8bK5Jy9o

- How I Make my YouTube Thumbnails in Gimp
https://www.youtube.com/watch?v=6_N7ab0aoLk

- TimeShift - The Easy Way to Create System Restore Points on Linux
https://www.youtube.com/watch?v=npQu2PTaqos

- A Clarification of Swap Space on Linux
https://www.youtube.com/watch?v=TdvmKW-yrts

- How SSH Works
https://www.youtube.com/watch?v=Dm4_k25PEow

- How to Secure a VPS
https://www.youtube.com/watch?v=Nuv1mPuHFvg

- How RSA Encryption Works
https://www.youtube.com/watch?v=ZPXVSJnDA_A

- Puppy Linux Install and Review
https://www.youtube.com/watch?v=jvWUSnzBKyo

- Cleaning up Duplicate Files And Images with AI - Czkawka
https://www.youtube.com/watch?v=CWlRiTD4vDc

- Szyszka - A Bulk File Rename Tool Written in Rust
https://www.youtube.com/watch?v=QacczpLQ0jo

- How to Become a VIM /G/od
https://www.youtube.com/watch?v=3sUDa5GdCTI

#### VIM

- Vim Tutorial for Beginners Lesson 1
https://www.youtube.com/watch?v=jyhYW0qZ6oA

- Bash Shell Scripting for Beginners 2019
https://www.youtube.com/watch?v=uXohpTNNP8A

- Bash Shell Scripting For Beginners 2019 - File Permissions
https://www.youtube.com/watch?v=RLp3M0lXhSQ

- Bash Shell Scripting for Beginners 2019 - Linux Environment Variables
https://www.youtube.com/watch?v=td_td5tiKtY

- Vim Tutorial Part 2 - How to Find and Replace text in Vim
https://www.youtube.com/watch?v=hYvGpFB6ZkY

- Vim Tutorial Part 3 - Working with Files and Tabs in Vim
https://www.youtube.com/watch?v=uiaYcIHk9VU

- Bash Shell Scripting For Beginners 2019 - Reading and Writing Files
https://www.youtube.com/watch?v=jXVIeyliKp8

- Bash Shell Scripting For Beginners 2019 - Grabbing User Input With the Read Command
https://www.youtube.com/watch?v=ukQI_J04qJo

- Bash Shell Scripting For Beginners 2019 - Flow Control Using If, Elif, Else, and While
https://www.youtube.com/watch?v=Q1gUq4UvnLE

- Vim Tutorial part 4 - Visual Mode
https://www.youtube.com/watch?v=1HS-PGY-xaA

- Wildcards - Bash Shell Scripting for Beginners
https://www.youtube.com/watch?v=EJjkvwelbpU

- Bash Shell Scripting for Beginners - Using Pipes
https://www.youtube.com/watch?v=FICwAKYc0Pg

- Bash Shell Scripting For Beginners - How to do Math in Bash
https://www.youtube.com/watch?v=3-DCmbO9VL8

- Bash Shell Scripting For Beginners - Logical And & Logical Or
https://www.youtube.com/watch?v=EYbJuvEfi7M

- Bash Shell Scripting For Beginners - How to use Functions Functions
https://www.youtube.com/watch?v=ZXcbwEZV6bc

- Vim Tutorial Part 5 - Command Mode
https://www.youtube.com/watch?v=tBjXm4Mw2lM

- Bash Shell Scripting For Beginners - Local and Global Variables
https://www.youtube.com/watch?v=4GR0wum_pOQ

- Vim Tutorial Part 6 - How to Use Macros
https://www.youtube.com/watch?v=fDqF27k8cgs

- How to Configure VIM to be 💪Powerful💪 and 💎Beautiful💎 with .vimrc
https://www.youtube.com/watch?v=nOhlk3mpgmM

- Make Your Bash Termianl Strong and Sexy with .bashrc
https://www.youtube.com/watch?v=tb8s8AJRZQw

- Vim Tutorial Part 7 - How to Install Vim Plugins with Vundle (nerdtree)
https://www.youtube.com/watch?v=_WFjU1FgPag

- Bash Shell Scripting For Beginners - Case Statement
https://www.youtube.com/watch?v=DA-Ilf15_r8

- 🔠 How to Install Awesome Fonts in Any Linux System 🔠
https://www.youtube.com/watch?v=qyxNC-75DNw

- Doas - The Better Less Bloated Alternative to Sudo
https://www.youtube.com/watch?v=Q-WTB6siyp0

- ZSH - A Better Shell than Bash?
https://www.youtube.com/watch?v=11o5ExlPqXI

- THE TRUE POWER OF VIM - Saving hours of time with some vim magic
https://www.youtube.com/watch?v=3yN6Q8I5KJA

- How to Use Marks in VIM
https://www.youtube.com/watch?v=o4x4jUcHJwk

- Shell Scripting Tutorial - Break & Continue Statement
https://www.youtube.com/watch?v=3Dg6j_zSk_0

- Vim Tutorial - Shell Commands
https://www.youtube.com/watch?v=ni2KO4sYMWg

- Emmet + VIM - The Best Way to Write HTML & CSS (essential for front end devs)
https://www.youtube.com/watch?v=ha7oyvhgP04

## *NERD* tier

### DT

- Use GitLab Groups To Organize Your Projects
https://www.youtube.com/watch?v=sqygmSQDrqM

- The Radio Active Command Line Radio Player
https://www.youtube.com/watch?v=H7sf1RDFXpU

1. Arch

- The Reasons Developers Prefer Linux Over Windows Are Why EVERYONE Should Use Linux
https://www.youtube.com/watch?v=d3I-G8_f4KM

- Home Directory Cluttered With Dotfiles? Move Them!
https://www.youtube.com/watch?v=tvPHmyb8AlY

- Install DTOS on ArcoLinux (Now With Awesome and Qtile!)
https://www.youtube.com/watch?v=QpAv5-CF_jU&t=770s

- The Text Editor Tier List (Open Source Editors ONLY!)
https://www.youtube.com/watch?v=k61ABYfQ1Ss

- Want To Zoom In On Your Linux Desktop? Try Magnus!
https://www.youtube.com/watch?v=S5j_BFl-yXY

- Creating Your Own Qt Applications...It's Easy!
https://www.youtube.com/watch?v=WTb99Rd3Vu0

- Can This Non-Developer Create His Own GTK App? (Haskell & Python)
https://www.youtube.com/watch?v=gkyd7Uv6uJ8

- Testing The Latest Release of DTOS Gnu/Linux
https://www.youtube.com/watch?v=l2oYqQx_bZs

- The AUR Removed My Packages, So I Created My Own Repo
https://www.youtube.com/watch?v=CYqd2AHXosk

- Nyxt Is The Most Customizable Web Browser EVER
https://www.youtube.com/watch?v=SVteSEjKytw

- Stunning Animated Video Effects Using Free Software
https://www.youtube.com/watch?v=jbshXrTys8Q

- Get My XMonad Desktop With DTOS
https://www.youtube.com/watch?v=JONeGA8uMe0

- Creating Packages For The Arch User Repository (AUR)
https://www.youtube.com/watch?v=iUz28vbWgVw

- Trading Stocks On Linux
https://www.youtube.com/watch?v=T7durBIJXH4

- The Surf Browser - Bookmarks, Stylesheets and Tabs
https://www.youtube.com/watch?v=Dlcj0onPrU8

- Espanso Is A Cross Platform Text Expander
https://www.youtube.com/watch?v=dlmU7QMoiJE

- Creating Packages For Arch Linux With Help From Bigpod
https://www.youtube.com/watch?v=ls_hpopfsQU

2. EMACS

- Getting Started With Doom Emacs
https://www.youtube.com/watch?v=dr_iBj91eeI

- Vim Versus Emacs. Which Is Better?
https://www.youtube.com/watch?v=VaBdlcYaZLQ

- Switching to GNU Emacs
https://www.youtube.com/watch?v=Y8koAgkBEnM

- Why Isn't Emacs More Popular?
https://www.youtube.com/watch?v=NCYwVbiV4fw

- Doom Emacs For Noobs
https://www.youtube.com/watch?v=iab2z21cRqA

- What Are The Benefits Of Emacs Over Vim?
https://www.youtube.com/watch?v=kRkp-uJTK7s

- Why Do I Choose Emacs Over Vim? It Looks Better!
https://www.youtube.com/watch?v=c-XU55ZIVak

- Three HUGE Mistakes New Emacs Users Make
https://www.youtube.com/watch?v=s0ed8Da3mjE

- Bookmarks, Buffers and Windows in Doom Emacs
https://www.youtube.com/watch?v=F1iaskxcLNA

- Is It "WRONG" To Learn Emacs With The Evil Bindings
https://www.youtube.com/watch?v=omROuzns-m0

- Emacs Does Everything, Including Viewing PDFs and Diffs
https://www.youtube.com/watch?v=v2-m7_X3uy8

- A New Beginning With GNU Emacs - Configuring Emacs 01
https://www.youtube.com/watch?v=d1fgypEiQkE

- Fixing Some Major Bugs And Minor Annoyances - Configuring Emacs 02
https://www.youtube.com/watch?v=4ZH9pobulDo

- Ivy, Shells and Custom Theming - Configuring Emacs 03
https://www.youtube.com/watch?v=A4UothfExBM

- App Launchers, Dashboard & Language Support - Configuring Emacs 04
https://www.youtube.com/watch?v=GUIq7ZJoEGY

- Dired, Neotree and True Transparency - Configuring Emacs 05
https://www.youtube.com/watch?v=uj-GBVWdxcA

- Cleaning Up My Emacs Config - Configuring Emacs 06
https://www.youtube.com/watch?v=tT1foT5Ccdo

- Putting The Final Touches On Emacs - Configuring Emacs 07
https://www.youtube.com/watch?v=Be041087PVI

- The Different Shells Available In Emacs
https://www.youtube.com/watch?v=2LzDgaen1cQ

- Navigating Emacs Documents With Imenu
https://www.youtube.com/watch?v=YM0TD8Eg9qg

- Escaping Emacs...(And You Thought Vim Was Hard To Quit!)
https://www.youtube.com/watch?v=emwLL-AyTLE

- An Emacs "Killer Feature" Is Bulk Renaming
https://www.youtube.com/watch?v=Fm1K1crWKn8

- Org Mode Basics In Doom Emacs
https://www.youtube.com/watch?v=34zODp_lhqg

- Emacs Makes Moving Words and Lines Super Easy
https://www.youtube.com/watch?v=bXC-pjlXkrA

- Learn the Basics of the Dired File Manager (Doom Emacs)
https://www.youtube.com/watch?v=eQ_3L702n7w

- Doom Emacs On Day One (Learn These Things FIRST!)
https://www.youtube.com/watch?v=37H7bD-G7nE

- Emacs Has Builtin Chat :) Those Other IDEs Don't :(
https://www.youtube.com/watch?v=UCIp2mY5Qyk

- Listen To Internet Radio With Emacs And Eradio
https://www.youtube.com/watch?v=P8p3zXSzY4c

- Create Your Own Emacs Start Page
https://www.youtube.com/watch?v=ADVCHpdmA5M

- Transform Words Into Pretty Symbols In Emacs
https://www.youtube.com/watch?v=5iCjhdCUuLg

- 20,000 Page Static Website Written In Org Mode
https://www.youtube.com/watch?v=xH8rieN7aRI

- Rewriting My Website In Org Mode
https://www.youtube.com/watch?v=cnogX7l7aKw

- Emacs Is A Gaming Platform for Windows, Mac and Linux
https://www.youtube.com/watch?v=DM41Nf4-tQM

- Emacs Plugins That Impressed Me
https://www.youtube.com/watch?v=qUyFJRuAjmw

- The Magit Git Client Is The "Killer Feature" In Emacs
https://www.youtube.com/watch?v=X_iX5US1_xE

- Want To Rewrite Your Configs In Org-Mode? It's Easy!
https://www.youtube.com/watch?v=pQe1ul51RM0

- Useful Tools Within Emacs For Writers
https://www.youtube.com/watch?v=eT1-lLQVHsw

- Boost Productivity With Emacs, Org Mode and Org Agenda
https://www.youtube.com/watch?v=Ea_-TaEGa7Y

- Font And Line Settings In Doom Emacs
https://www.youtube.com/watch?v=Ey54ovJUdQ4

- Is The Best RSS Reader An Emacs Package?
https://www.youtube.com/watch?v=rkSZbzGpQuM

- Create Beautiful Websites Using Emacs Org Mode
https://www.youtube.com/watch?v=K6S-AKm5snc

3. VIM/NeoVIM

- Configuring Neovim With Lua (It's Easy!)
https://www.youtube.com/watch?v=m62UCkdQ8Ck

- Vim Tips And Tricks Some Of My Favorite Vim Commands
https://www.youtube.com/watch?v=13gNtgqzzmM

- Managing Your Splits In Vim
https://www.youtube.com/watch?v=Zir28KFCSQw

- A Few Vim Plugins That Have Impressed Me Recently
https://www.youtube.com/watch?v=RGOsE3UWqhI

4. Window Manager

- The Killer Feature Of Tiling Window Managers Isn't Tiling
https://www.youtube.com/watch?v=yTzFoJfEXyU

- Dwm Is a GREAT Window Manager (After It's Patched!)
https://www.youtube.com/watch?v=7pfxHoAnCkE

- Qtile Is My New (Old) Window Manager
https://www.youtube.com/watch?v=3EtaUHZZHXw

- Qtile "Extras" Gives You Even More Customization Options
https://www.youtube.com/watch?v=BLUYTo6yfgI

- Some Interesting Built in Features in Qtile
https://www.youtube.com/watch?v=WVHC11BeEGw

- Easily Customize DWM With Flexipatch
https://www.youtube.com/watch?v=92bkauK3qpE

- Create Custom Libraries For Xmonad Such As Color Libraries
https://www.youtube.com/watch?v=_2hezl0R5EI

- How To Make Widgets In Qtile Clickable Events
https://www.youtube.com/watch?v=qpjuKdlS9E4

- Applying Patches To Suckless Software
https://www.youtube.com/watch?v=3dwoC0EYStw

- XMonad, You're Simply The Best!
https://www.youtube.com/watch?v=5oBT0a25FyA

- Time To Leave Dwm Behind - My Thoughts on Suckless
https://www.youtube.com/watch?v=wgRZNPxErEs

- Qtile - Getting Started And Setting Workspaces
https://www.youtube.com/watch?v=lA-LBWfJbNQ

- Qtile - Configuring Your Layouts
https://www.youtube.com/watch?v=6r2uKXq4b48

- Configuring The Bar In Qtile
https://www.youtube.com/watch?v=3BAgCAldhGs

- A Simple File Manager Using Dmenu
https://www.youtube.com/watch?v=EyW6pRlWv6Q

- Let's Rice Our Dmenu With Patching
https://www.youtube.com/watch?v=bBJ0qxqzlxk

- Getting Started With Awesome Window Manager
https://www.youtube.com/watch?v=qKtit_B7Keo

- Packaging My Suckless Builds And Shell Color Scripts
https://www.youtube.com/watch?v=U6e05Y3DC5E

- Suckless Tabbed Adds Tabs To Any Program
https://www.youtube.com/watch?v=-Xr4ouz8zQA

- Discovered Some Cool Stuff In Spectrwm and Qtile
https://www.youtube.com/watch?v=hGwoRyykifw

5. Shell

- Solve Problems With Shell Scripting And Dmenu
https://www.youtube.com/watch?v=AwTmXP1tRgY

- How To Use Shell Environment Variables
https://www.youtube.com/watch?v=9ZpL8iDU7LY

- Write A Script To Search the Arch Wiki (OFFLINE!)
https://www.youtube.com/watch?v=fiqKZXQQgpw

- Want A List Of Your Keybindings? Write A Shell Script!
https://www.youtube.com/watch?v=WkXyXIs-ZMI

- Add Dialogs And Menus To Shell Scripts With Whiptail
https://www.youtube.com/watch?v=KsiPYMKSHU8

- Transform Your Scripts With Bash Simple Curses
https://www.youtube.com/watch?v=4G_cthFZeJ8

- Xdotool Simulates Key Presses and Mouse Clicks
https://www.youtube.com/watch?v=1DF58wDDfBE

- I Need Ambient Noise At My Workstation
https://www.youtube.com/watch?v=iX8EO_okgZI

- Creating A "Help" Program For DTOS Using Dmenu
https://www.youtube.com/watch?v=n1wePk9ZGs0

- Macho Is Man Pages On Steroids
https://www.youtube.com/watch?v=XY8w42gCFN0

- Creating Functions In The Fish Shell
https://www.youtube.com/watch?v=ec1A3YGQY60

- Creating A Dmenu Script For Web Bookmarks And History
https://www.youtube.com/watch?v=PgWkKprZcnQ

- Fix Your Shell Scripts With Shellcheck
https://www.youtube.com/watch?v=X3BIc9EHBuk

6. Gentoo/Void/Nix

- A Base Gentoo Installation
https://www.youtube.com/watch?v=2sOfX_Lb1As

- Installing Xorg And DWM On Gentoo
https://www.youtube.com/watch?v=k25TrKGXo_A

- Exploring Void Linux - A Different Kind Of Distro
https://www.youtube.com/watch?v=49jhT9SaOcQ

- NixOS Is A Fascinating Linux Distribution
https://www.youtube.com/watch?v=J7Hdaqs1rjU

- A Quick Installation Of FreeBSD 13.0
https://www.youtube.com/watch?v=j7hUHqjwyZc

### Others

- Run your own AI (but private)
https://www.youtube.com/watch?v=WxYC9-hBM_g

- COMPLETE Beginners guide to Suckless (Dwm, Dmenu, ST)
https://www.youtube.com/watch?v=6MaTMuFVGck

### Luke Smith

#### Arch

- Automating Everything in Linux with ENTR!
https://www.youtube.com/watch?v=9KAp_zWeI34

- RANGER: the aesthetic way to manage files on Linux
https://www.youtube.com/watch?v=L6Vu7WPkoJo

- Copy and Paste to/from Vim from/to Other Programs!
https://www.youtube.com/watch?v=E_rbfQqrm7g

- Imagemagick for CHADS!: Canvases, Plasma, Composites, Geometry
https://www.youtube.com/watch?v=nbXHbHrfrIs

- LF: File browsing, Image Previews written in Golang
https://www.youtube.com/watch?v=XOMj7JSGR78

- Only Linux Brainlets CAT into GREP!!!
https://www.youtube.com/watch?v=82NBMvx6vFY

- Wrap Your Brain around 'Patch' and 'Diff' on Linux
https://www.youtube.com/watch?v=-CiLU9-RAGk

#### Shell

- A simple shell script for a Blog & RSS feed
https://www.youtube.com/watch?v=S1WQlr42xDM

- FISH (Friendly Interactive Shell) by Bash Boomer
https://www.youtube.com/watch?v=C2a7jJTh3kU

- Some bashrc recommendations and what I use
https://www.youtube.com/watch?v=_UrDsbs0-OE

- This is how you do Cronjobs. (404 MEME NOT FOUND)
https://www.youtube.com/watch?v=rgSxYvFWjUY

- Let's Shell Script Together: Case statements, audio control and more
https://www.youtube.com/watch?v=zrUW14L_uqE

- zsh: Syntax Highlighting, vi-mode, Autocomplete, more
https://www.youtube.com/watch?v=eLEo4OQ-cuQ

#### E-Mail

- My mutt/neomutt email configuration and settings
https://www.youtube.com/watch?v=2U3vRbF7v5A

- mutt Email + OfflineIMAP and msmtp - See your email offline!
https://www.youtube.com/watch?v=0MiP1Ei_UQw

- Working on a email wizard for mutt and offlineIMAP configs
https://www.youtube.com/watch?v=1h-Qr_Ricik

- Mutt Wizard: Command Line Email at 156% Efficiency
https://www.youtube.com/watch?v=mPiQuWbF57M

- Email Offline with isync: For backups, mutt and more...
https://www.youtube.com/watch?v=tR9zk3xz5SA

- CLEAN YOUR EMAILS, BUCKO! (where am i)
https://www.youtube.com/watch?v=O2IJZ-QxvAk

- Now You Can Auto-Configure Mutt and OfflineIMAP!
https://www.youtube.com/watch?v=SsEJz9f9VMQ

- https://www.youtube.com/watch?v=Zg9z8k8pkuM
https://www.youtube.com/watch?v=Zg9z8k8pkuM

- Setting up a Personal Email Server...
https://www.youtube.com/watch?v=PSHhmU5hIHA

- SPEEDRUN: Installing an Email Server (Current World Record: 2:22!; Script %)
https://www.youtube.com/watch?v=Zg9z8k8pkuM

#### Suckless

- Programs that Suck Less! suckless
https://www.youtube.com/watch?v=3C6saSpX4KQ

- sxiv: The Suckless Image Viewer for GNU/Linux
https://www.youtube.com/watch?v=GYW9i_u5PYs

- st (suckless terminal): vim bindings, Xresources and pywal compatibility and more
https://www.youtube.com/watch?v=9H75enWM22k

- dmenu tips: Emojis and more
https://www.youtube.com/watch?v=UCEXY46t3OA

- dmenu: Your own Custom Script Menus!
https://www.youtube.com/watch?v=R9m723tAurA

- My st (suckless terminal) Build: The Even Bester Terminal!
https://www.youtube.com/watch?v=FJmm7wl4JUI

- The Simple Terminal: st from Suckless, and how I extend it
https://www.youtube.com/watch?v=uqLcvKYl-Ms

- Colored Characters and Emoji in dmenu and dwm
https://www.youtube.com/watch?v=0QkByBugq_4

- Customizing a Status Bar in dwm (Weather, Audio, Mail, Battery and more)
https://www.youtube.com/watch?v=NuS_JLkQbKc

- Suckless's dwm: So easy even a caveman could do it!
https://www.youtube.com/watch?v=unqsQJaECv0

### Mental Outlaw

#### Suckless

- Dwm, Suckless, Simple, yet Powerful 👍
https://www.youtube.com/watch?v=wRh8HQ4ICwE

- Patching Suckless Programs Made Easy
https://www.youtube.com/watch?v=80FISSjYYrk

- DWM in Full HD - Best Way to Set Resolution for Xorg
https://www.youtube.com/watch?v=3gTCuZXuPUI

- How to Rice DWM
https://www.youtube.com/watch?v=DlViR5Ymg4A

- SLStatus - The Suckless Way to View System Stats
https://www.youtube.com/watch?v=nl6TeGPJBV0

#### Gentoo

- Best Gentoo Linux Installation Guide 2019 part 1
https://www.youtube.com/watch?v=Qv-H13sKrGY

- Best Gentoo Linux Installation Guide 2019 Part 2
https://www.youtube.com/watch?v=zS32HTrIBGw

- How to Fix Clock Skew Error in Gentoo Linux.
https://www.youtube.com/watch?v=-yxtCbJ5jmQ

- How to use 🚩USE Flags🚩 in Gentoo
https://www.youtube.com/watch?v=BkpvZYDMX34

- Speed up Your Emerge Times on Gentoo
https://www.youtube.com/watch?v=ttN7dni0ILM

- How to Migrate from OpenSSL to LibreSSL on Gentoo Linux
https://www.youtube.com/watch?v=cQs0RGdSXuM

- How to Emerge Firefox on Gentoo with Libressl
https://www.youtube.com/watch?v=WAofilRGZQY

- How to Setup PipeWire on Gentoo
https://www.youtube.com/watch?v=-ul02R7TWtY

### Network Chuck

- 60 Hacking Commands You NEED to Know
https://www.youtube.com/watch?v=gL4j-a-g9pA

- you need to learn tmux RIGHT NOW!!
https://www.youtube.com/watch?v=nTqu6w2wc68

- Put your website on the Dark Web
https://www.youtube.com/watch?v=CurcakgurRE

- The Dark Web NEEDS You!
https://www.youtube.com/watch?v=tBnJRraXDc0

- what is an IP Address? // You SUCK at Subnetting // EP 1
https://www.youtube.com/watch?v=5WfiTHiU4x8

- we ran OUT of IP Addresses!! // You SUCK at Subnetting // EP 2
https://www.youtube.com/watch?v=tcae4TSSMo8&list=PLIhvC56v63IKrRHh3gvZZBAGvsvOhwrRF&index=2

- we’re out of IP Addresses….but this saved us (Private IP Addresses) // You SUCK at Subnetting // EP 3
https://www.youtube.com/watch?v=8bhvn9tQk8o&list=PLIhvC56v63IKrRHh3gvZZBAGvsvOhwrRF&index=3

- i bet you can't do this (because you still suck at subnetting) // EP 4
https://www.youtube.com/watch?v=2-i5x8KCfII&list=PLIhvC56v63IKrRHh3gvZZBAGvsvOhwrRF&index=4

- What is a Subnet Mask??? (you NEED to know it!!) // You SUCK at Subnetting // EP 5
https://www.youtube.com/watch?v=oZGZRtaGyG8&list=PLIhvC56v63IKrRHh3gvZZBAGvsvOhwrRF&index=5

- let’s subnet your home network // You SUCK at subnetting // EP 6
https://www.youtube.com/watch?v=mJ_5qeqGOaI&list=PLIhvC56v63IKrRHh3gvZZBAGvsvOhwrRF&index=6

- subnetting my coffee shop // You SUCK at subnetting // EP 7
https://www.youtube.com/watch?v=B1vqKQIPxr0&list=PLIhvC56v63IKrRHh3gvZZBAGvsvOhwrRF&index=7

- Subnetting…..but in reverse EP 8
https://www.youtube.com/watch?v=6zopTcQFhqM&list=PLIhvC56v63IKrRHh3gvZZBAGvsvOhwrRF&index=8

- Do you STILL suck at subnetting?? (THE FINAL TEST) // EP 9
https://www.youtube.com/watch?v=OD2vG5st4zI

- you need this FREE CyberSecurity tool
https://www.youtube.com/watch?v=3CaG2GI1kn0

- build your own cloud
https://www.youtube.com/watch?v=xBIowQ0WaR8

- learning AI and ChatGPT isn’t that hard
https://www.youtube.com/watch?v=JJCq21Dc-Us

- you NEED to use VS Code RIGHT NOW!!
https://www.youtube.com/watch?v=1ZfO149BJvg

- EXPOSE your home network to the INTERNET!! (it's safe)
https://www.youtube.com/watch?v=ey4u7OUAF3c

- 60 Linux Commands you NEED to know (in 10 minutes)
https://www.youtube.com/watch?v=gd7BXuUQ91w

- subdomain takeover (stealing websites)
https://www.youtube.com/watch?v=GH6O3oBZLK8

- Block ALL ads with this…(and speed up your internet)
https://www.youtube.com/watch?v=B2V_8M9cjYw

- learning Docker is HARD!! (this makes it easy)
https://www.youtube.com/watch?v=iX0HbrfRyvc

- Docker Compose will BLOW your MIND!! (a tutorial)
https://www.youtube.com/watch?v=DM65_JyGxCo

- Docker networking is CRAZY!! (you NEED to learn it)
https://www.youtube.com/watch?v=bKFMS5C4CG0
