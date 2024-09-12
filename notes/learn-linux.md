```
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

> bash/zsh/fish
> CV in LaTeX

# Terminal Emulator Basics

## 1 - Options

### 1.1 - Command Structure / Options

[COMMAND] [OPTION] [PARAMETER] [ARGUMENT]

```bash
$ command -options arguments
# Example:
$ ls -l /home/yourusername/Documents
$
$ sort -nr random_numbers.txt
15
11
9
7
5
1
```

### 1.2 - Long Form Options

To use multiple long-form options in a single command, we must write them out separately with their own dashes (--). We cannot combine long-form options in the same way we can with single character options.

```bash
$ sort -ru random_numbers.txt
$ sort --reverse --unique random_numbers.txt
$ cal -m --months 3 march 1998
```

## 2 - Manuals

Manuals are at the core of your programs, because they describe all of their possibilities. **We have 4 main types of manuals**:

### 2.1 - **man**

In general, each man page will follow this pattern:

1. The title/name of the command with a short explanation of its purpose.
2. Synopsis of the command's syntax.
3. Description of the all the command's options.

**man** pages come from the 70's (first man page is from 1971), and they are the defacto Unix-like-OSes manuals.

#### 2.1.1 - Man Pages Synopsis

```bash
$ man echo
...
echo [OPTION]... [STRING]...
...
```

The above synopsis is for the *echo* command, which echoes text back at us. An ellipsis (...) indicates that one or more of the proceeding operand are allowed:

[OPTION]... means that we can pass more than one option to echo.

[STRING]... indicates that we can pass multiple strings to echo. For example, we can run *echo hello* and also *echo hello there you cutie little chicken pot pie*.

```bash
$ man cp
...
cp [OPTION]... SOURCE DEST
...
```

So far, all of the operands we've seen have been optional, but some commands do require certain arguments in order to run. In a man page synopsis, required operands are NOT wrapped in square brackets. In the above synopsis for the copy *cp* command, we see that we can optionally provide one or more options. **SOURCE** indicates that we must pass one source, and **DEST** indicates that we must pass a destination as well. Those two arguments are required.

#### 2.1.2 - Manual Selections

The manual is broken into 8 different sections, each covering a specific topic in depth:

1. User Commands
2. System Calls
3. C Library Functions
4. Special files
5. File forms
6. Games
7. Miscellaneous
8. System admin commands

#### 2.1.3 - Searching the Manual

We can search for a term within the manual using the *-k* option. For example, to search the manual for "dog" we would run *man -k dog*.

```bash
$ man -k dog
rtkitctl (8)              - Realtime Policy and Watchdog daemon control
sd_event_get_watchdog (3) - Enable event loop watchdog support
sd_event_set_watchdog (3) - Enable event loop watchdog support
sd_watchdog_enabled (3)   - Check whether the service manager expects watchdog keep-alive notifications from ...
wdctl (8)                 - show hardware watchdog status
```

### 2.2 - **info**

**info** pages are from the *GNU* project, all the GNU utils have info pages. Lots of other programs also have info pages, but some of them just copy the *man* pages there. To get started and learning about the info pages just write "info", and you will be taken to the home page. They have hyperlinks.

```bash
$ info
$ info cp
```

- NOTE: If you want to realy learn how the *GNU* part of *GNU/Linux* works, then read the **info pages**!

### 2.3 - **help**

To get only a shortened version of the *man* pages for programs, mainly just the options, use the **--help** flag:

```bash
$ find --help
```

### 2.4 - **tldr**

Gives a small list of 5-10 most used options for a program, and their description. Not many programs have them.

```bash
$ tldr
$ tldr rm
$ tldr find
```

## 3 - The **type** Command

```bash
$ type man
```

1. An executable program, usually stored in */bin*, */usr/bin*, or */usr/local/bin*. These are compiled binary files (hence bin).
2. A built-in shell command. These commands are part of the shell (bash in our case).
3. A shell function.
4. An alias.

- The *which* command (find the exact location of an executable, this only works for executables, not built-in shell commands or aliases)
- help command

## 4 - Basic Commands

1. Navigation
    - pwd
    - cd
    - ls

2. Creating Files and Folders
    - touch
    - file (determine file type)
    - mkdir
    - nano (text editor)

3. Deleting, moving, and Copying
    - rm (file)
    - rm -r (folder)
    - rm -d (folder, only if it's empty)
    - mv (move from-to)
    - mv (rename from-to, files and folders)
    - cp (files and folders)

4. Working with Files
    - less (displays content of file one page at a time)
    - cat (concatenates and prints the contents of files)
    - tac (cat in reverse)
    - rev (prints content of a file line by line, but from right to left {tfel ot thgir})
    - head (prints portion of file, by default from line 1-10)
    - tail (like head, but last 10 lines, not first)
    - wc (number of words, lines, or bytes in files)
    - sort
    - tr (“translate” - reads a byte stream from standard input, translates or deletes characters, and writes the result to standard output)
    - du (reports the space needed to represent the files at or under the current directory)
    - tee (copies standard input to standard output, like normal, but also to any files given as arguments.)

## 5 - Standard Streams

The three standard streams are communication channels between a computer program and its environment.

They are:
    - Standard Output
    - Standard Input
    - Standard Error

### 5.1 - Standard Output

**Standard output** is a place to which a program or command can send information. The information could go to a screen to be displayed, to a file, or even to a printer, or other devices.

```
Standard   -|                    /---> Sdandard Output Monitor
Input       |     |-----------| /----> Sdandard Output Printer
(keyboard,  |---->|  Command  |/-----> Sdandard Output File
file[text], |     |-----------|\
command)   -|                   \----> Standard error
```

### 5.2 - Standard Input

**Standard input** is where a program or command gets its input information from. By default, the shell directs standard input from the keyboard. The input information could come from a keyboard, a file, or even from another command!

### 5.3 - Standard Error

Commands and programs also have a destination to send error messages: **standard error**. By default, the shell directs standard error information to the screen for us to read, but we can change that destination if needed!

### 5.4 - Redirection

**redirection** describes the ways we can alter the source of standard input, and the destinations for standard output and standard error.

#### 5.4.1 - Redirecting Output

The redirect output symbol **>** tells the shell to redirect the output of a command to a specific file instead of the screen.

By default, the *date* command, for example, will print the current date to the screen. If we instead run *date > output.txt* the output will be redirected to a file called 'output.txt'.

```bash
$ echo "Meow!" > cat.txt
$ ls -l > files.txt
```

#### 5.4.2 - Appending

When we redirect output into a file using **>** any existing contents in the file are overwritten. Sometimes this is not what we want! To instead keep the existing contents in the file and add new content to the end of the file, use **>>** when redirecting.

```bash
$ echo "hello" >> greeting.txt
$ echo "world" >> greeting.txt
$ cat greeting.txt
hello
world
```

#### 5.4.3 - Redirecting Input

To pass the contents of a file to standard input, use the **<** symbol followed by the filename. For example, we could pass the contents of the chickens.txt file to the cat command using *cat < chickens.txt*.

- *cat* (and many other commands) are set up to accept filenames as arguments directly, but we can also redirect to standard input manually.

#### 5.4.4 - Combo

We can redirect standard input and output at the same time!

- In this example, we are using cat to read in the contents of 'original.txt' and then redirecting the output to a file called 'output.txt'.

    ```bash
    $ cat < original.txt > output.txt
    ```

- In this example, we are redirecting the 'names.txt' file to the *sort* command. We are also redirecting the output of *sort* to a file called 'sorted.txt'.

    ```bash
    $ sort < names.txt > sorted.txt
    ```

#### 5.4.5 - Redirecting Standard Error

By default, error messages are outputed to the screen, but we can change this by redirecting standard error. The standard error redirection operator is **2>**.  If we ran a command like *cat nonexistentfile* (where the file really does not exist) we would see an error printed to the screen. We can instead redirect standard error to a file with *cat nonexistentfile 2> error.txt*.

```bash
$ cat nonexistentfile 2> error.txt
$ cat nonexistentfile 2>> error.txt # You can also append errors in files like with standard output
```

- Why 2> ?

    Each stream gets its own numeric file descriptor, and for standard error the number is '2'.

    1. standard input (0)
    2. standard output (1)
    3. standard error (2)

#### 5.4.6 - Defaults

The **>** operator actually defaults to using '1' as the file descriptor number, which is why we didn't need to specify *1>* to redirect standard output. Similarly, the **<** operator uses a default file descriptor number of 0, so we don't need to specify *0<* to redirect to standard input (though we can!).

```bash
$ date 1> now.txt
$ date > now.txt
```

#### 5.4.7 - Examples

1. In this example, I'm running *ls* with an invalid option that generates the error message "ls: illegal option -- z". I'm redirecting standard error to an 'error.txt' file:

    ```bash
    $ ls -zzz 2> error.txt #Creating file
    $ ls -zzz 2>> error.txt #Appending to file
    ```

---

2. In this example, we are going to redirect multiple streams at once! Here we are concatenating two files, redirecting standard output to a file called 'insects.txt', and redirecting standard error to a file called 'error.txt'.

    ```bash
    $ cat bees.txt ants.txt > insects.txt 2> error.txt
    ```

    **!!!** When redirecting both standard output and standard error, **make sure standard output comes FIRST**. Always redirect standard error after standard output.

---

3. If we wanted to redirect both standard output and standard error to the same file, we could do this...

    ```bash
    $ ls docs > output.txt 2> output.txt
    ```

    Or we could instead use **2>&1** which is a fancy syntax for saying "redirect standard error to the same location as standard output (or whatever has the file descriptor #1)".

    ```bash
    $ ls docs > output.txt 2>&1
    ```

---

4. Newer versions of bash also support a fancier syntax for redirecting both standard output and standard error to the same file: the **&>** notation.

    ```bash
    $ ls docs &> output.txt
    $ ls docs &>> output.txt
    ```

## 6 - Piping

Pipes are used to redirect a stream from one program to another program. We can take the output of one command and redirect it to the input of another.

```
        |-------------|         |-------------|  /----->
()----> |  Command 1  | ------> |  Command 2  | -|
        |-------------|  pipe   |-------------|  \----->
```

### 6.1 - Syntax

We use the pipe character **|** to separate two commands. **The output of the first command will be passed to the standard input of the second command**.

```bash
$ command1 | command2
```

### 6.2 - Examples

1. **ls | head**

    This example lists the files (non hidden files) in a directory. We pipe the output of *ls* to the word head command. The *-5* option tells *head* to display the first 5 files and folders.

    ```bash
    $ ls | head -5
    ```

---

2. **ls | less**

    This example pipes the output of *ls* to *less*. the */usr/bin* directory typically contains a bunch of stuff, so it can be nice to use *less* to read the results in a more manageable way.

    ```bash
    $ ls -l /usr/bin | less
    ```

---

3. **> vs |**

    Though both the **>** character and the **|** character are used to redirect output, they do it in very different ways.

    - **>** connects a command to some file.
    - **|** connects a command to another command.

    ```bash
    $ ls -l /usr/bin > list.txt
    $ ls -l /usr/bin | less
    ```

---

4. **date | rev**

    This example shows the output of the *date* command being piped to the *rev* command. The end result is the reverse of the current date! Very useful 😉!

    ```bash
    $ date | rev
    4202 TSEE 32:24:51 8  yaM deW
    ```

---

5. **ls | wc**

    This example counts the number of files (non hidden files) in a directory. We pipe the output of *ls* to the word count command. The *-l* option tells *wc* to count the number of lines.

    ```bash
    $ ls | wc -l
    ```

---

6. **tac | rev**

    In this example, we are calling *tac* with a file and then piping the output to *rev*. The final result is the content of file.txt printed "horizontally" and "vertically" reversed.

    ```bash
    $ tac file.txt | rev
    ```

---

7. **cat | sort**

    This example concatenates two files using *cat* and then sorts them alphabetically.

    ```bash
    $  cat colors.txt pets.txt | sort
    ```

---

8. **cat | head | tail**

    In this example, we are using *cat* to feed a file to *head*, which cuts it down to the first 7 lines of the file and passes it to *tail*, which then outputs the last 5 lines of that "chunk". The end result is lines 3-7 are output to the screen.

    ```bash
    $ cat file | head -7 | tail -5
    ```

---

9. **echo | tr | tr**

    This example uses *tr* to capitalize a string and then again uses *tr* to remove all punctuation from the capitalized string.

    ```bash
    $ echo "Hello, world..." | tr “[:lower:]” “[:upper:]” | tr -d "[:punct:]"
    ```

    > "Hello, world..." -> "hello, world..." -> "HELLO, WORLD..." -> "HELLO WORLD"

---

10. **ls | sort | head**

    This example displays the 3 largest files in the current directory, using *ls*, *sort*, and *head*.

    ```bash
    $ ls -lh | sort -rhk 5 | head -3
    ```

    > First, *ls -lh* lists out all the files in the current directory. That output is passed to *sort*, which sorts based on the fifth field (the file size). The *-h* option is for human readable sort (comparing 100b, 40k, 1g, etc), and the *-r* reverses the order so that we end up with the largest files first. Finally, that output is passed to *head*, which limits the results to the first 3.

    - NOTE: this is not the preferred way to find large files! Use the *du* command instead

---

11. **cat | wc**

    In this example, we're using *cat* to concatenate three files together before piping the output to *wc* to get a count of the total number of words.

    ```bash
    $ cat file1 file2 file3 | wc -w
    ```

---

12. What if I wanted to create a file with the output of *cat*?

    ```
                |=          _________________           ?
    *file1*     |=== cat??  |               |  wc       ?
    |------\    |=======->  |     PIPE      | ---> "6"  ?
    | hello \   |======-    |_____     _____|           ?
    | world |   |======          |     |                ?
    |-------|   |=====-          | tee |                ?
    *file2*     |=====           |_____|                ?
    |------\    |====-             ||                   ?
    |I love \   |====              \/  c                ?
    |animals|   |===-           |-----\ o               ?
    |-------|   |===            |hello \ m              ?
    *file3*     |==-            |world  \ b             ?
    |------\    |==             |I love |  o            ?
    |  bye  \   |=-             |animals|   .           ?
    |       |   |=              |bye    |    m          ?
    |-------|   |-              |-------|     d         ?
    ```

    This is where the **tee** command comes in. The *tee* program reads standard input and copies it both to standard output AND to a file. This allows us to capture information part of the way through a pipeline, without interrupting the flow.

    ```bash
    $ command1 | tee file.txt | command2
    $ cat file1 file2 file3 | tee combo.md | wc -w
    $ ls -l /usr/bin | tee allfiles.txt | less
    ```

## 7 - Wildcard Characters (aka globbing patterns)

We can use special wildcard characters to build patterns that can match multiple filenames at once.

### 7.1 - The * Wildcard

The asterisk __*__ character represents zero or more characters in a filename. For example:

- __ls *.html__ will match any files that end with .html like index.html and navbar.html.
- __cat blue*__ will match any files that start with "blue" like "blue.html" or "bluesteel.js".

### 7.2 - The ? Wildcard

The question mark __?__ character represents any **single** character.

- __ls app.??__ will match any files named "app" that end with two character file extensions like "app.js" or "app.py" but NOT "app.css".
- __ls pic?.png__ will match pic1.png, pic2.png, pic3.png, but also picA.png, or picx.png.

### 7.3 - Range Wildcards

Inside of square brackets **[ ]** we can specify a range of characters to match.

- **ls pic[123].png** will only match pic1.png, pic2.png, and pic3.png.
- **ls file[0-9]** will match file1, file2, file3, up to file9.
- __ls [A-F]*__ will match any files that begin with a capital A, B, C, D, E, or F.

### 7.4 - Negating Ranges

Inside of square brackets **[ ]** we can specify a range of characters to NOT match, using a caret **^**.

- __ls [^a]*__ will match any files that do NOT start with "a".
- __ls [^0-9]*__ will match any files that do NOT start with a numeric digit (0-9).

### 7.5 - Character Classes

[:alpha:] - alphabetic characters, upper and lower
[:digit:] - digits 0-9
[:lower:] - lower case letters
[:upper:] - upper case letters
[:blank:] - blank characters: space and tab
[:punct:] - punctuation characters
[:alnum:] - alphanumeric characters (alpha + digit)

```bash
$ echo [[:upper:]]* #Any file that starts with uppercase letter
```

## 8 - Brace Expansion

Brace expansion is used to generate arbitrary strings. Basically, it will generate multiple strings for us based on a pattern. We provide a set of strings inside of curly braces **{ }**, as well as optional surrounding prefixes and suffixes. The specified strings are used to generate all possible combinations with the optional prefixes and suffixes. For example:

- This will generate three new files: 'page1.txt', 'page2.txt', and 'page3.txt'.

    ```bash
    $ touch page{1,2,3}.txt
    ```

### 8.1 - Ranges

1. We can provide a numeric range, which will be used to generate a sequence. In this example, **jan{1..31}** will be expanded to jan1, jan2, jan3, etc. until jan31.

    ```bash
    $ mkdir jan{1..31}
    ```

---

2. We can provide a third value which defines the interval for the range. In this example, **echo {2..10..2}** will print out the numbers 2, 4, 6, 8, and 10.

    ```bash
    $ echo {2..10..2}
    ```

---

3. We can even specify alphabetical ranges. This example generates the files group-a.txt, group-b.txt, group-c.txt, group-d.txt, and group-e.txt

    ```bash
    $ touch group-{a..e}.txt
    ```

4. We can conbine multiple ranges and go over every conbination.

    ```bash
    $ echo {a,b,c}{1,2,3} # Prints a1 a2 a3 b1 b2 b3 c1 c2 c3
    $ echo {b,r}{eef,at,ag} # Prints beef bat bag reef rat rag
    ```

5. We can also use **nested brace expansions**.

    ```bash
    $  echo {x,y{1..5},z} # Prints x y1 y2 y3 y4 y5 z
    ```

## 9 - Arithmetic Expansion

The shell will perform arithmetic via expansion using the **$((expression))** syntax. inside the parentheses, we can wright artithmetic expressions using:

1. Addition **+**
2. Subtraction **-**
3. Multiplication __*__
4. Division **/**
5. Exponentiation __**__
6. Modulo (remainder operator) **%**

- The shell **only performs integer arithmetic**, so the result is always a whole number.

```bash
$ $((expression))
$ $((11+7)) # 18
$ $((2*12)) # 24
$ $((36%7)) # 1
```

## 10 - Command Substitution

We can use the **$(command)** syntax to display the output of another command, for example:

```bash
$ echo "today is $(date)" # Today is Thu May  9 12:09:18 EEST 2024
```

##### Quoting

In this example, our large whitespace is ignored because the shell performs something called word splitting.

```bash
$ echo look at          me # Prints look at me
```

In this example, we only see "holy" printed out because the shell thinks we are referencing a *variable called hit*. It can't find a value for hit, so it substitutes an empty string instead.

```bash
$ echo holy $hit # Prints holy
```

###### Double Quotes

If we wrap text in double quotes, the shell will respect our spacing and will ignore special characters except for **$**, **\**, and **`**.

Pathname expansion, brace expansion, and word splitting will be ignored. However, command substitution and arithmetic expansion is still performed because dollar signs still have meaning inside double quotes.

```bash
$ echo look at        me # Prints look at        me
$ echo "{1...9"} # Prints {1...9}
```

###### Single Quotes

Use single quotes to suppress all forms of substitution.

```bash
$ echo "$((2+2)) is 4" # Prints 4 is 4
$ echo '$((2+2)) is 4' # Prints $((2+2)) is 4
```

###### Escaping

To selectively prevent expansion or substitution for specific characters, we can prefix them with a single backslash. We can use this to reference special characters that normally have meanings inside of filenames.

```bash
$ echo "$5.00" # Prints .00
$ echo "\$5.00" # Prints $5.00
```
