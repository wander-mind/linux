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

# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

### Paragraph

To create paragraphs, use a blank line to separate one or more lines of text. You should not indent paragraphs with spaces or tabs.

Paragraph 1

Paragraph 2

### Line breaks

To create a line break, end a line with two or more spaces, and then create a new line.

This is the first line.  
This is the second line.  

### Emphasis

**Bold text** type 1
__Bold text__ type 2

*Italic text* type 1
_Italic text_ type 2

***Bold and italic text*** type 1
___Bold and italic text___ type 2
__*Bold and italic text*__ type 3
**_Bold and italic text_** type 4

~~Strikethrough text~~ type 1

### Blockquotes

To create a blockquote, add a `>` in front of a paragraph.

> Blockquote
> 
> Blockquote 2

### Nested Blockquotes

> This is the first paragraph.
> 
> > This is the nested paragraph.
> >
> > > Another nested Blockquote.

### Ordered Lists

1. List item 1
2. List item 2
3. List item 3
	1. Nested List item 1
	2. Nested list item 2
4. List item 4

### Unordered Lists

To create an unordered list, add dashes `-`, asterisks `*`, or plus signs `+` in front of line items.

+ First item
- Second Item
	- Nest list items with 4 spaces or 1 tab
* Third Item

### Escaping Characters

To display a literal character that would otherwise be used to format text in a Markdown document, add a backslash `\` in front of the character.

\* Without the backslash, this would be a bullet in an unordered list.

### Characters You Can Escape (and **Tables**)

|**Characters**|**Name**|
|---------|---------|
|\\|Backslash|
|\`|Tickmark|
|\*|Asterisk|
|\_|Underscore|
|\{\}|Curly braces|
|\[\]|Brackets|
|\(\)|Parentheses|
|\#|Pound sign|
|\+|Plus sign|
|\-|Minus sign (hyphen)|
|\.|Dot|
|\!|Exclamation mark|

### Task lists

[x] Task 1
[] Task 2
[] Task 3

### Code Blocks

```
Code blocks
line 2
```

### Horizontal Rules
To create a horizontal rule, use three or more asterisks `***`, dashes `---`, or
underscores `___` on a line by themselves.

___
---
***

### Links

To create a link, enclose the link text in brackets (e.g., [Duck Duck Go]) and then follow it immediately with the URL in parentheses (e.g., (https://duckduckgo.com)).

Use [Duck Duck Go](https://duckduckgo.com).

### URLs and Email Addresses

To quickly turn a URL or email address into a link, enclose it in angle brackets.

<https://www.gnu.org>
<fake@example.com>

### Formatting Links

To emphasize links, add asterisks before and after the brackets and parentheses.

I love supporting **[GNU](https://www.gnu.org)**. (With bald)

This is *[GNU](https://www.gnu.org)*. (With italic)

### Reference-Style Links

In Markdown, reference-style links are a way to create URLs that make your text easier to read and display. This type of link is constructed in two parts:

1. The first part, which you keep inline with your text.
2. The second part, which you store somewhere else in the file.

**Formatting the First Part of the Link**

The first part of a reference-style link uses two sets of brackets. The first set surrounds the text that should appear linked, and the second set displays a label used to point to the link elsewhere in your document. You can include a space between the first and second sets of brackets.

Example formats for the first part:

* [hobbit- hole][1]
* [hobbit-hole] [1]
* [hobbit- hole][a]
* [hobbit-hole][A]

**Formatting the Second Part of the Link**

The second part of a reference-style link is formatted with three attributes:

1. The label, in brackets, followed by a colon and at least one space (`[label]:`).
2. The URL for the link, which can be optionally enclosed in angle brackets (`< >`).
3. The optional title for the link, which can be enclosed in double quotes, single quotes, or parentheses.

Example formats for the second part:

+ [hobbit-hole]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle
+ [hobbit-hole]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit lifestyles"
+ [hobbit-hole]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle 'Hobbit lifestyles'
+ [hobbit-hole]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle (Hobbit lifestyles)
+ [hobbit-hole]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> "Hobbit lifestyles"
+ [hobbit-hole]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> 'Hobbit lifestyles'
+ [hobbit-hole]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> (Hobbit lifestyles)

You can place the second part of the link anywhere in your Markdown document, such as immediately after the paragraph or at the end of the file.

**Example Putting the Parts Together**

Here's an example of a reference-style link:

```markdown
In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole,
filled with the ends of worms and an oozy smell, nor yet a dry, bare, sandy
hole with nothing in it to sit down on or to eat: it was a [hobbit-hole][1],
and that means comfort.
[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> "Hobbit lifestyles"
```

The output is:

In a hole in the ground there lived a hobbit. Not a nasty, dirty, wet hole, filled with
the ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing
in it to sit down on or to eat: it was a hobbit-hole, and that means comfort.

The HTML for the link is identical:

```html
<a href="https://en.wikipedia.org/wiki/Hobbit#Lifestyle" title="Hobbit lifestyles">hobbit- hole</a>
```

In summary, reference-style links in Markdown allow you to create URLs that are easy to read and display. The two parts of the link are formatted differently, with the first part being kept inline with your text and the second part being stored elsewhere in the file.

### Images

To add an image, add an exclamation mark (!), followed by alt text in brackets, and the path or URL to the image asset in parentheses. You can optionally add a title after the URL in the parentheses.

\!\[\Philadelphia's Magic Gardens. This place was so cool\!\]\(\images/philly-\magic-garden.png \"\Philadelphia's Magic Gardens\"\)
