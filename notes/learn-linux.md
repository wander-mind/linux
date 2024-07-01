# The GNU/Linux Notebook

## Arch Linux

## Command Line

### WanderMinds Common Command List:

|**Command**    |**Description**                                        |
|---------------|-------------------------------------------------------|
|date           |Print/Set system Date/Time                             |
|cal            |Callendar                                              |
|echo           |Display a line of text                                 |
|sort           |Sort lines of text files                               |

### Basics

#### Command Structure

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

#### Long Form Options

To use multiple long-form options in a single command, we must write them out separately with their own dashes (--). We cannot combine long-form options in the same way we can with single character options.

- sort -ru random_numbers.txt
- sort --reverse --unique random_numbers.txt
- cal -m --months 3 march 1998

#### Man Pages

In general, each man page will follow this pattern:

- The title/name of the command with a short explanation of its purpose.

- Synopsis of the command's syntax.

- Description of the all the command's options.

#### Man Pages Synopsis

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
#### Manual Selections

The manual is broken into 8 different sections, each covering a specific topic in depth:
1. User Commands
2. System Calls
3. C Library Functions
4. Special files
5. File forms
6. Games
7. Miscellaneous
8. System admin commands

For example:

```bash
$ man 1 sort
```

#### Searching the Manual

We can search for a term within the manual using the *-k* option. For example, to search the manual for "dog" we would run *man -k dog*.

```bash
$ man -k dog
rtkitctl (8)         - Realtime Policy and Watchdog daemon control
sd_event_get_watchdog (3) - Enable event loop watchdog support
sd_event_set_watchdog (3) - Enable event loop watchdog support
sd_watchdog_enabled (3) - Check whether the service manager expects watchdog keep-alive notifications from ...
wdctl (8)            - show hardware watchdog status

```

#### Types of Commands

- *type* command

    - An executable program, usually stored in */bin*, */usr/bin*, or */usr/local/bin*. These are compiled binary files (hence bin).

    - A built-in shell command. These commands are part of the shell (bash in our case).

    - A shell function.

    - An alias.

- which command (find the exact location of an executable, this only works for executables, not built-in shell commands or aliases)
- help command

#### Navigation

- pwd
- cd
- ls

#### Creating Files and Folders

- touch
- file (determine file type)
- mkdir
- nano (text editor)

#### Deleting, moving, and Copying

- rm (file)
- rm -r (folder)
- rm -d (folder, only if it's empty)
- mv (move from-to)
- mv (rename from-to, files and folders)
- cp (files and folders)

#### Working with Files

- less (displays content of file one page at a time)
- cat (concatenates and prints the contents of files)
- tac (cat in reverse)
- rev (prints content of a file line by line, but from right to left {tfel ot thgir})
- head (prints portion of file, by default from line 1-10)
- tail (like head, but last 10 lines, not first)
- wc ( number of words, lines, or bytes in files)
- sort

#### Standard Streams

The three standard streams are communication channels between a computer program and its environment.
They are:

- Standard Input
- Standard Output
- Standard Error

##### Standart Output

Standard output is a place to which a program or command can send information. The information could go to a screen to be displayed, to a file, or even to a printer or other devices.

```
Standard   -|                    /---> Sdandard Output Monitor
Input       |     |-----------| /----> Sdandard Output Printer
(keyboard,  |---->|  Command  |/-----> Sdandard Output File
file        |     |-----------|\
command)   -|                   \----> Standard error
```

##### Standard Input

Standard input is where a program or command gets its input information from. By default, the shell directs standard input from the keyboard. The input information could come from a keyboard, a file, or even from another command!

##### Standard Error

Commands and programs also have a destination to send error messages: standard error. By default, the shell directs standard error information to the screen for us to read, but we can change that destination if needed!

##### redirection

**redirection** describes the ways we can alter the source of standard input, and the destinations for standard output and standard error.

###### Redirecting Output

The redirect output symbol **>** tells the shell to redirect the output of a command to a specific file instead of the screen.

By default, the *date* command will print the current date to the screen. If we instead run *date > output.txt* the output will be redirected to a file called output.txt.

```bash
$ echo "Meow!" > cat.txt
$ ls -l > files.txt
```

###### Appending

When we redirect output into a file using *>* any existing contents in the file are overwritten. Sometimes this is not what we want! To instead keep the existing contents in the file and add new content to the end of the file, use *>>* when redirecting.

```bash
$ echo "hello" >> greeting.txt
$ echo "world" >> greeting.txt
$ cat greeting.txt
hello
world
```

###### Redirecting Input

To pass the contents of a file to standard input, use the *<* symbol followed by the filename. For example, we could pass the contents of the chickens.txt file to the cat command using *cat < chickens.txt*.

- cat (and many other commands) are set up to accept filenames as arguments directly, but we can also redirect to standard input manually.

###### Combo

We can redirect standard input and output at the same time! In this example, we are using cat to read in the contents of original.txt and then redirecting the output to a file called output.txt.

```bash
$ cat < original.txt > output.txt
```

We can redirect standard input and output at the same time! In this example, we are redirecting the names.txt file to the sort command. We are also redirecting the output of sort to a file called sorted.txt.

```bash
$ sort < names.txt > sorted.txt
```

###### Redirecting Standard Error

By default, error messages are output to the screen, but we can change this by redirecting standard error. The standard error redirection operator is **2>**.  If we ran a command like *cat nonexistentfile* (where the file really does not exist) we would see an error printed to the screen. We can instead redirect standard error to a file with *cat nonexistentfile 2> error.txt*.

```bash
$ cat nonexistentfile 2> error.txt
```

- Why 2> ?

    Each stream gets its own numeric file descriptor, and for standard error the number is 2.

    - standard input (0)
    - standard output (1)
    - standard error (2)

###### Defaults

The *>* operator actually defaults to using 1 as the file descriptor number, which is why we didn't need to specify *1>* to redirect standard output. Similarly, the *<* operator uses a default file descriptor number of 0, so we don't need to specify *0<* to redirect to standard input (though we can!).

```bash
$ date 1> now.txt
$ date > now.txt
```

###### Examples

1. In this example, I'm running *ls* with an invalid option that generates the error message "ls: illegal option -- z". I'm redirecting standard error to an error.txt file:

```bash
$ ls -zzz 2> error.txt #Creating file
$ ls -zzz 2>> error.txt #Appending to file
```

---

2. In this example, we are going to redirect multiple streams at once! Here we are concatenating two files, redirecting standard output to a file called insects.txt, and redirecting standard error to a file called error.txt.

```bash
$ cat bees.txt ants.txt > insects.txt 2> error.txt
```

**!!!** When redirecting both standard output and standard error, make sure standard output comes FIRST. Always redirect standard error after standard output.

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

#### Piping

Pipes are used to redirect a stream from one program to another program. We can take the output of one command and redirect it to the input of another.

```
        |-------------|         |-------------|  /----->
()----> |  Command 1  | ------> |  Command 2  | -|
        |-------------|  pipe   |-------------|  \----->
```

##### Syntax

We use the pipe character **|** to separate two commands. The output of the first command will be passed to the standard input of the second command.

```bash
$ command1 | command2
```

##### Examples

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

Though both the *>* character and the *|* character are used to redirect output, they do it in very different ways.

- *>* connects a command to some file.
- *|* connects a command to another command.

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

"Hello, world..." -> "hello, world..." -> "HELLO, WORLD..." -> "HELLO WORLD"

---

10. **ls | sort | head**

This example displays the 3 largest files in the current directory, using *ls*, *sort*, and *head*.

```bash
$ ls -lh | sort -rhk 5 | head -3
```

First, *ls -lh* lists out all the files in the current directory. That output is passed to *sort*, which sorts based on the fifth field (the file size). The *-h* option is for human readable sort (comparing 100b, 40k, 1g, etc), and the *-r* reverses the order so that we end up with the largest files first. Finally, that output is passed to *head*, which limits the results to the first 3.

- NOTE: this is not the preferred way to find large files! Use the *du* command instead

---

11. **cat | wc**

In this example, I'm using *cat* to concatenate three files together before piping the output to *wc* to get a count of the total number of words.

```bash
 cat file1 file2 file3 | wc -w
```

---

12. What if I wanted to create a file with the output of *cat*?

```
            |=          _________________           ?
 *file1*    |=== cat??  |               |  wc       ?
|------\    |=======->  |     PIPE      | ---> "6"  ?
| hello \   |======-    |_____     _____|           ?
| world |   |======          |     |                ?
|-------|   |=====-          |     |                ?
 *file2*    |=====           |_____|                ?
|------\    |====-             ||                   ?
|I love \   |====              \/  c                ?
|animals|   |===-           |-----\ o               ?
|-------|   |===            |hello \ m              ?
 *file3*    |==-            |world  \ b             ?
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

#### Wildcard Characters (aka globbing patterns)

We can use special wildcard characters to build patterns that can match multiple filenames at once.

##### The * Wildcard

The asterisk "*" character represents zero or more characters in a filename. For example:

- __ls *.html__ will match any files that end with .html like index.html and navbar.html.

- __cat blue*__ will match any files that start with "blue" like "blue.html" or "bluesteel.js".

##### The ? Wildcard

The question mark "?" character represents any **single**
character.

- __ls app.??__ will match any files named "app" that end with two character file extensions like "app.js" or "app.py" but NOT "app.css".

- __ls pic?.png__ will match pic1.png, pic2.png, pic3.png, but also picA.png, or picx.png.

##### Range Wildcards

Inside of square brackets **[ ]** we can specify a range of characters to match.

- **ls pic[123].png** will only match pic1.png, pic2.png, and pic3.png.

- **ls file[0-9]** will match file1, file2, file3, up to file9.

- __ls [A-F]*__ will match any files that begin with a capital A, B, C, D, E, or F.

##### Negating Ranges

Inside of square brackets **[ ]** we can specify a range of characters to NOT match, using a caret **^**.

- __ls [^a]*__ will match any files that do NOT start with "a".

- __ls [^0-9]*__ will match any files that do NOT start with a
numeric digit (0-9).

##### Character Classes

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

##### Brace Expansion

Brace expansion is used to generate arbitrary strings. Basically, it will generate multiple strings for us based on a pattern. We provide a set of strings inside of curly braces **{ }**, as well as optional surrounding prefixes and suffixes. The specified strings are used to generate all possible combinations with the optional prefixes and suffixes. For example:

> This will generate three new files: page1.txt, page2.txt, and page3.txt

```bash
$ touch page{1,2,3}.txt
```

##### Ranges

We can provide a numeric range, which will be used to generate a sequence. In this example, **jan{1..31}** will be expanded to jan1, jan2, jan3, etc. until jan31.

```bash
$ mkdir jan{1..31}
```

---

We can provide a third value which defines the interval for the range. In this example, **echo {2..10..2}** will print out the numbers 2, 4, 6, 8, and 10.

```bash
$ echo {2..10..2}
```

---

We can even specify alphabetical ranges. This example generates the files group-a.txt, group-b.txt, group-c.txt, group-d.txt, and group-e.txt

```bash
$ touch group-{a..e}.txt
```

###### Brace Expansion

```bash
$ echo {a, b, c}{1, 2, 3} # Prints a1 a2 a3 b1 b2 b3 c1 c2 c3
```

---

```bash
$ echo {b,r}{eef,at,ag} # Prints beef bat bag reef rat rag
```

###### Nested Brace Expansion

```bash
$  echo {x,y{1..5},z} # Prints x y1 y2 y3 y4 y5 z
```

##### Arithmetic Expansion

The shell will perform arithmetic via expansion using the **$((expression))** syntax. inside the parentheses, we can wright artithmetic expressions using:

> + addition
> - subtraction
> * multiplication
> / division
> ** exponentiation
> % modulo (remainder operator)

- The shell only performs integer arithmetic, so the result is always a whole number.

```bash
$ $((expression))
$ $((11+7)) # 18
$ $((2*12)) # 24
$ $((36%7)) # 1
```

##### Command substitution

We can use the *$(command)* syntax to display the output of another command, for example:

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

#### Finding Stuff

By default, **find** on its own will list every single file and directory nested in our current working directory.

```bash
$ find # Lists all files and folders in current directory
$ find Desktop/
$ find Desktop/ -type f # Finds all the files
$ find Desktop/ -type d # Finds all the directories
$ find Desktop/ -name "*.txt" # Find all files ending in .txt
$ find Desktop/ -iname "*.txt" # Find all files ending in .txt, case insensitive
$ find -iname "*.html" | wc -l # Using wc to count the number of files (each find is its own line)
$ find -user kenny # Match files and directories that belong to a user
$ find -mmin -20 # Match items that were modifies LESS than 20 mins ago
$ find -mmin +30 # Match items that were modifies MORE than 30 mins ago
```

##### Logical Operators

We can also use the *-and*, *-or*, and *-not* operators to create more complex queries.

```bash
$ find -name "*cat*" -or -name "*kitty*"
$ find -type -f -not -name "*.html"
$ find Desktop -d -iname "*command*" -and -iname "*line*"
```

##### User Defined Actions

We can provide *find* with our own action to perform using each matching pathname. The syntax is:

```bash
$ find -exec command {} ;
```

- The *{}* are a placeholder for the current pathname (each match), and the semicolon is required to indicate the end of the command.

---

To delete every file that starts with contains "broken" in its file name, we could run:

```bash
$ find -name "*broken*" -exec rm '{}' ';'
```

- Note that we need to wrap the *{}* and *;* in quotes because those characters have special meanings otherwise.

---

To find all files that are owned by the user "colt", and list out the full details for each match using ls -l:

```bash
$ find -type f -user colt -exec ls -l '{}' ';'
```

---

This example finds all files that end with .html. It then creates a copy of each one using the *cp* command. Each of the copies ends with "_COPY" so we end up with files like "index.html_COPY" and "navbar.html_COPY":

```bash
$ find -type f -name "*.html" -exec cp '{}' '{}_COPY' ';'
```

##### **xargs**

When we provide a command via *-exec*, that command is executed separately for every single element. We can instead use a special command called *xargs* to build up the input into a bundle that will be provided as an argument list to the next command.

```bash
$ find -name "*.txt" -exec ls '{}' ';'
$ find -name "*.txt" | xargs ls
```

---

This example finds four individual chapter files (chapter1, chapter2, chapter3, and chapter4) and then passes them to the *cat* command, which then outputs the combined contents to a file called fullbook.txt.

```bash
$ find -name "chapter[1-4].txt" | xargs cat > fullbook.txt
```

---

*xargs* reads items from standard input, separated by blanks (spaces or newlines) and then executes a command using those items.

- The *mkdir* command expects us to pass arguments. It doesn't work with standard input, so this example does NOT make any folders for us:

```bash
$ echo "hello" "world" | mkdir
mkdir: missing operand
```

- We can instead add in the *xargs* command, which will accept the standard input coming from echo and pass them as arguments to *mkdir*.

```bash
$ echo "hello" "world" | xargs mkdir
$ ls
hello
world
```

#### Grep

The *grep* command searches for patterns in each file's contents. *grep* will print each line that matches a pattern we provide.

```bash
$ grep PATTERN FILE # Search for pattern in file and print the line
$ grep -i PATTERN FILE # Case insensitive
```

For example, *grep "chicken" animals.txt* will print each line from the animals.txt file that contains the pattern "chicken".

##### Word search

Use the *-w* option to ensure that grep only matches words, rather than fragments located inside of other words. A word is defined by non-word characters on either side (start of line, spaces, end of line, punctuation, etc.):

```bash
grep -w "dog" book.md # Would match dog, but not doggystyle
```

##### Recursive Search

Use the *-r* option to perform a recursive search which will include all files under a directory, subdirectories and their files, and so on. If we don't specify a starting directory, grep will search the current working directory. *grep -r "chicken"* will search the current working directory and any nested directories for lines that contain "chicken".

##### Regex

We can provide regular expressions to *grep*. Regular expressions helps us match complex patterns, BUT the syntax does differ from what we've seen so far.

> _._ - matches any single character.
> _^_ - matches the start of a line.
> _$_ - matches the end of a line.
> _[abc]_ - matches any character in the set.
> _[^abc]_ - matches any char NOT in set.
> _[A-Z]_ - matches characters in a range.
> _*_ - repeat previous expression 0 or more times.
> _\_ - escape meta-characters.

---

This example matches a string that contains a digit 1-9 (not 0), followed by any 4 characters:

```bash
$ grep '[1-9]....' prices.txt
$95.99
$30.75
```

##### **grep -c**

The *-c* option tells grep to print the number of matches instead of printing the actual matches:

```bash
$ grep -c "\$[1-9]" prices.txt
4
```

##### **grep -o**

The *-o* option tells grep to only print out the matches, rather than the entire line containing each match.

```bash
$ grep -o "\$[1-9]" prices.txt
$9
$3
$9
$2
```

##### Piping to Grep

A common use case is to use *grep* to whittle down or filter a large chunk of data. In this example, the *ps -aux* command will output a huge list of all processes running on our machine. We pipe that data to grep, and then
filter it down to only the processes that include "kde". In effect, this command lets us see what kde is up to:

```bash
$ ps -aux | grep hermione
```

---

In this example, we are getting the *man page* for *grep* and then piping that to the actual *grep* command, where we search for the string
"count". Basically, it's a weird way of searching the *man pages*:

```bash
$ man grep | grep "count"
```

#### Permissions and Users

In the early days of computing, computers were massive machines that only a few people could afford. As a result, universities might have had only one computer,  but with dozens of terminals scattered across campus. This meant that users didn't have permission to access every file on the machine, even if they were trying to read or write something.

For example, if you tried to view the `/etc/sudoers` file using the `cat` command, you would get a "permission denied" message. This is because permissions are in place to control who can access specific files and directories.

#### Groups

On Unix-based systems, each user has their own unique identity, known as a user ID (UID). Users also belong to groups, which are collections of users with similar privileges or roles. When you create a new user account, it is assigned a UID and a group ID (GID).

The `id` command can be used to view the user and group IDs of a particular user. These IDs are stored in two important files:

* `/etc/passwd`: This file contains information about each user on the system, including their username, password (hashed), UID, GID, and other details.
* `/etc/group`: This file contains information about each group on the system, including its name, GID, and a list of users who belong to that group.

#### Ownership and Permissions

When you create a file or directory, you are considered the owner. As the owner, you have control over who can access the file or directory. You can assign different permissions to three types of users:

* **Owner**: The user who created the file or directory.
* **Group**: The group of users that the owner belongs to.
* **Other**: Any other user on the system.

Permissions are denoted by a series of letters, with each letter representing one of three permissions: `r` (read), `w` (write), and `x` (execute). There is also another 10-th character in the beggining with 4 possible states: `d` - directory, `c` - character special file, `l` - symbolic link, or `-` - regular file. For example:

* `drw-r--r--`: The owner has read and write permission to the directory, while the group and other users have only read permission.

Understanding how permissions and groups work is crucial for managing access to files and directories on Unix-based systems. By controlling who can access what, you can ensure the security and integrity of your data.

```bash
$ echo "hi" > groups-test.txt
$ ls -l groups-test.txt
-rw-r--r-- 1 nomadic nomadic 3 May 11 15:54 groups-test.txt
```

---

- **Effect on files**:

`r` - file can be read
`w` - file can be modified
`x` - file can be treated as a program to be executed
`-` - file cannot be read, modified, or executed

---

- **Effect on directories**:

`r` - directory's contents can be listed
`w` - directory's contents can be modified (create new files, rename files/folders) but only if the executable attribute is also set
`x` - allows a directory to be entered or "cd"ed into
`-` - directory contents cannot be shown, modified, or "cd"ed into

---

##### Altering Permissions

To change the permissions of a file or directory, we can use the `chmod` command (change mode). To use `chmod` to alter permissions, we need to tell it:

- Who we are changing permissions for.
- What change are we making? Adding? Removing?
- Which permissions are we setting?

1. First, we specify the "who" using the following values:

> u - user (the owner of the file)
> g - group (members of the group the file belongs to)
> o - others (the "world")
> a - all of the above

2. Next, we tell `chmod` "what" we are doing using the following characters:

> - (minus sign) removes the permission
> + (plus sign) grants the permission
> = (equals sign) set a permission and removes others

3. Finally, the "which" values are:

> r - the read permission
> w - the write permission
> x - the execute permission

---

```bash
$ chmod g+w file.txt # Add write permissions to the group
$ chmod a-w file.txt # Remove write permissions from all
$ chmod u+x file.txt # Add executable permissions for owner
$ chmod a=r file.txt # Set permissions to read ONLY for all
```

###### Chmod Octals

`chmod` also supports another way of representing permission patterns: octal numbers (base 8). Each digit in an octal number represents 3 binary digits.

|   Octal   |   Binary  |   File Mode   |
|-----------|-----------|---------------|
|   0       |   000     |       ---     |
|   1       |   001     |       --x     |
|   2       |   010     |       -w-     |
|   3       |   011     |       -wx     |
|   4       |   100     |       r--     |
|   5       |   101     |       r-x     |
|   6       |   110     |       rw-     |
|   7       |   111     |       rwx     |

```bash
$ chmod 755 file.txt # rwx r-x r-x
$ chmod 664 text.txt # rw- rw- r--
```

##### Changing Identity

```bash
$ su - user2 # Change identity as another user, type **exit** to leave
```

In Linux systems, there is a super user called *root*. The root user can run any command and access any file on the machine, regardless of the file's actual owner. The root user has tons of power and could easily damage or even destroy the system by running the wrong commands! For this reason, Ubuntu locks the root user by default.

Even if the root user is locked by default, we can still run specific commands as the root user by using the sudo command. Individual users are granted an "allowed" list of commands they can run as the super user. Run **sudo -l** to see the permitted commands for your particular user.

```bash
$ chown user2 file.txt # Make user2 the owner of file.txt
$ chown user2:myppl file.txt # change the owner of file.txt to user2 AND changes the file group owner to the group myppl
$ chown :myppl file.txt # To only change the group of a file
$
$ groups user2 # View group the given name belongs to
$ addgroup friends # Create a new group
$ adduser user3 friends # Add a user to a group
```

#### The Environment

The shell maintains a set of information during a shell session, known as the environment. It's just a series of key-value pairs that define properties like:

- Your home directory
- Your working directory
- The name of your shell
- The name of the logged in user

```bash
$ printenv | less # View the environment variables and their current values.
```

If we write out the name of an environment variable prefixed with a dollar sign *$*, the shell will replace it with the actual value.

```bash
$ echo USER
USER
$ echo $USER
nomadic
```

##### Variables

To define a variable, use the syntax *variable=value*. Built-in variables are upper-cased, so it's a common convention to lowercase custom variables to prevent confusion.

```bash
color="blue"
num=123.45
```

##### Aliases

```bash
$ alias ll='ls -al'
ll # Executes ls -al
```

##### Startup Files

When we log in, the shell reads information from startup files. First, the shell reads from global config files that effect the environment for all users. Then, the shell reads startup files for specific users. The specific files the shell reads from depends on the type of session: login vs. non-login shell sessions For login sessions:

- `/etc/profile` - global config for all users          !!!!
- `~/.bash_profile` - user's personal config file       !!!!
- `~/.bash_login` - read if bash_profile isn't found    !!!!
- `~/.profile` - used if previous two aren't found      !!!!

For non-login sessions (typical session when you launch the terminal via the GUI):

- `etc/bash.bashrc` - global config for all users
- `~/.bashrc` - specific settings for each user. This is where we can define our own settings and configuration.

#### Bash Scripts

1. Write a script in a file and save it.
2. Make the script executable using *chmod*.
3. Verify that the shell can find your script.

The first line of our script should read *#!/bin/bash*. The *#!* is called the shebang, and it's used to tell the OS which interpreter it should use when parsing this file. We want ours to say "use bash to interpret this file!". After the shebang, we need to include the path to the Bash binary. This is not Bash specific. If we wanted to write a python script, we would include the path to the python binary. Then we have comments *#*, and commands.

```bash
#!/bin/bash

#my first script

echo "hello everyone"
```

##### Executing the Script

```bash
$ bash ~/scripts/hello # Run our first script the long way
```

When we run a command like *pwd*, the shell starts looking for the executable *pwd* program in the list of directories stored in the PATH variable. It starts looking in the first location and then keeps looking if it doesn't find it.

> 1. /usr/local/sbin
> 2. /usr/local/bin
> 3. /usr/bin

If we want the shell to find our own programs, we need to make sure we put them in a folder that is in the PATH variable. A common place to put user-defined programs is in a *bin* folder located in the user's home directory. For example */home/nomadic/bin*. If that directory is not yet part of your path, you can add it by putting *PATH="$HOME/bin:$PATH"* in your *.bashrc* file.

Don't forget to make your scripts executable.

#### Cron

The **cron** service allows us to schedule commands to run at regular intervals like:

- Every 30 minutes
- Every day at midnight
- Every 1st of the month
- Every December 15th

To set up a cron job, we need to edit the **crontab** configuration file. Rather than edit the files directly, it's best to use the *crontab -e* command.

```bash
$ crontab -l # List all cron jobs
```

##### Cron Characters

|0      |4      |8-14   |*/2    |\*          |
|-------|-------|-------|-------|------------|
|minute |hour   |day    |month  |day(of week)|
|0-59   |0-23   |1-31   |1-12   |0-6         |

`*`     Any value           *Value skipped*
`5,6`   List of values      *5 and 6*
`1-4`   Range of values     *1 to 4*
`*/5`   Step of valies      *every 5*

##### Cron Examples

1. Run a job at minute 20 of every hour:
> 20 * * * * command

2. Run a job every day at midnight:
> 0 0 * * * command

3. Run a job every day at 5.30AM:
> 30 6 * * * command

4. Run a job every Monday at 5.30AM:
> 30 6 * * 1 command

5. Run a job every monday in April at 5.30AM:
> 30 6 * 4 1 command

6. Run a job at midnight on the first of every month:
> 0 0 1 * * command

7. Run a job at midnight every weekday (monday-friday):
> 0 0 * * 1-5 command

### More Commands



## Markup Languages

### LaTeX

#### What is LaTeX?

Basically, it's how big boys write and format documents. Every public brief, scientific article, book, cryptocurrency whitepaper or even outline written by people who know what they're doing is written in LaTeX.

It's not hard to learn. It's sort of like learning vim. People complain about how hard it is until they take the bare minimum of time to learn it and realize how much more effective they are with it. The return on investment is massive.

LaTeX is a markup language, meaning that you write documents in whatever text editor of your choosing and instead of manually moving margins and placing things yourself, everything is optimally placed when you compile the document into a .pdf.

Markup languages are great because they separate the task of writing from the task of formatting. It's somewhat similar to the difference between HTML (a markup language) and CSS (which does styling) and Javascript (which does scripting). LaTeX does the equivalent of all three, but it allows you to do them all separately so you can easily extend documents.

#### "Why is LaTeX better than Microsoft Word and friends?"

- Bibliographies are done totally automatically, you never need to write them yourself. You just tell LaTeX, "Oh, APA style, please" and it's done.

- Section/page numbering and cross referencing is done automatically. That means if you refer people to a chart on page 52 multiple times or figure 5 or chapter 4, then you move pages or figures or chapters around, the references continues to refer to the page, figure or chapter you originally meant. That also means you can literally copy and paste text out of your document into a larger document and LaTeX will automatically reconfigure all cross-referenced numbers to be correctly referring to what you actually want them pointing to.

- Text can easily be copied to a new format. Term papers and esays can become monographs or books and with LaTeX, you can just copy the raw text and it takes on the formatting of the document it is inside of.

- It is scriptable. You can use coreutilities and other programs to search, modify and move text. This seems useless if you've never done it, but it makes a world of difference when you realize you can. You could use this, for example, to automatically take customer information on your computer and automatically-generate professional itemized invoices in LaTeX or the like. Also, being able to use sed -i and grep with .tex files is fantastic.

- For more advanced users, LaTeX is more than a markup language too: and also has basic logic and tests (if statements and the like) that allow you to react dynamically to unknown content.

- You can write LaTeX in literally anything. I write it in vim for its extensibility, but you can easily design your own workflow, instead of having to rely on the ever-changing idiosyncracies of Microsoft Word.

"**But Word has some of those things!**"

Niche features that basically no Word-user uses. Also they change with every new update. This is the primary operating structure of LaTeX.

#### Installing LaTeX

The core LaTeX package (texlive) is fairly small, but I highly recommend you download all the LaTeX packages out there at the beginning (a big download). This is nice because as you learn more things, you won't have to manually download new packages. You'll be able to experiment with new LaTeX abilities through new packages seamlessly. Here's how you get them:

Arch-based (Artix, Manjaro, Parabola):
```bash
pacman -S texlive-basic texlive-fontsrecommended texlive-latex texlive-latexrecommended texlive-mathscience texlive-latexextra texlive-pictures
```

Debian-based (Ubuntu/Linux Mint):
```bash
apt-get install texlive-full
```

Once you've downloaded and installed that, you have a fully-featured LaTeX engine on your machine! You can make lots of amazing things that you don't even fully realize yet.

##### Basics

First thing to learn is how to compile documents with pdflatex and the basic principles of the TeX lanugage.

