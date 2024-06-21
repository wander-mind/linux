# Run AI on your PC locally like a **PRO**!!!

Here I will list all that I find interesting about running an AI model locally.

## AI models

First of all - what is an AI model anyways? This is not a real *AGI* like what we all  think it is. An AGI that is actually better than humans in all kind of diferent aspects but it will use up so much resources (GPUs, CPUs, NPUs, electricity, water, ect) that we can't even possibaly concieve the idea of doing so, we're just not anywhere near there yet. We're talking about LLM's, just one small aspect of (in the far future) an AGI, there's also image and audio recognition types, picture, audio and video generating types, automobile self-driving ones, ect.. A simulation of one small aspect of our brains let's say. We've known how to train LLM's and other types AI for 60 years or so, weve done it before, read up - interesting stuff. It's all hype for AI companies to boost their stocks, investments and loans on the news and the internet. These AI models are just AI's trained by different people or companies, with diferent data, in diferent ways, like ChatGPT, Bard, ect. so we can ask it for a cookie recepe or to fix our code, most times unsuccessfully.

Never the less, it's still some verry interesting and usefull technology that we've all integrated into our lives for good or for worse in the past 2 years. And I don't know about you, but I don't like the idea one bit of major companies, as always, giving us a technology or service for free to mine our data and habbits to learn more about us that we know ourselfs, to keep, sell, use, analise, give to companies and goverments forever with the goal being control and manipulation. As we all know from Snowden - if they can, they will! What if an evil dictatorship rises in a once "democratic" country and they use that data to know everything about us and our habbits, so they can class and number us as whatever and dictate our lives in a harmful way. Let's say North Korea takes over the south and implements a social credit system, like in China, and then put you and 3 generations of your family in a labor camp just because you've watched gay porn 20 years ago and have asked ChatGPT "How to ... a man" or what ever. This is an extreme example, but take social media as an example, They want to keep you glued to the service, slot-machiening your brains dopamine, making you a consumer, and making you think you have free range of all types of neutrally delivered news and information, when in reality the Zuck made you vote for Biden or whatever, meanwhile separating you from your friends and family while "connecting people". It's already happening, we just don't admit it, because we're all "perfect" and "unique" with no capabilities of critical thinking anymore, it's a lost art - something any reasonable person used to do!

Have you seen what Microsoft are trying to do recently? They want to take over the tech world.. again. Let's take look: Microsoft owns OpenAI, right? But OpenAI don't just control ChatGPT, but also the Bing AI, Cortana (now Copilot), GitHubs Copilot, The Dall-E stuff, ect. They are the most influential and controlling AI and data collection company out there. And Microsoft now wants to do what?? They will be forcing (not giving us a choice, because nobody will opt in) us into having the **Copilot AI** feature in our PCs, the **screenshot** "Recall" shit-thing, and **keylogging** "Activity history thing".

Microsoft needs these 3 key features in order to run circles around Apple, Meta and Google. Look at what they will have the capability of doing if thing go their way:

- They will have total control with Bing AI and Copilot on your searches, doing your research for you in the way they see fit.
- They will take screenshots of your screen every couple of seconds and have the highly capable AI analise everything you are doing.
- They will also keep a timeline of every file you open, every key you press, your clipboard, your mouse clicks, everything...

Not only will they collect and analise this data about you (we all know the information collected is not going to be stores only locally on your PC), but they will also analise their invasiveness 2-way - first with the altered "personalised" data they give you, but also see which of the links you click, how much time it takes for you, what you are looking at exactly, your detailed behaviour, your secrets, it's ALL OVER, never use this crap ppl.

In other words: `they will not only have a timeline of what you have done, but a timeline of what's been shown to you, and how you have interacted with it`!

What if i'm being preasured even more by this bot to buy Dave Mustaine tickets, because it knows so much about me, and maybe because I keep the entire discography in MP3 and FLAC on my PC, and watch some music vides from time to time? What if Dave's PC know he is dying and that maybe this will be he's last concert, and now OpenAI is pushing this concert even more on ppl? What if these things are not just offline, private, and personal slave helpers, but a mesh billions of ppl, all manipulated in a trans or dance of sort into **Big Tech's** own personal interests, so we become too poluted to realise what's going on outside, and manipulate us into voting in their interest, untill one day, bit by bit, like the frog in boiling water, lose all our freedomes? Too deep? Well, it's technically possible, like it was technically possible for the CIA to spy on most humas on the earth in real time 12 years ago, but they said that they wil neeeever do such a thing - belive us freedome fighters, we are just spying on the terrorists, that's all.

But ChatGPT, Bard, and the other shitbots are not your only options. Welcome to the world of local AI on your own local and offline PC. Go to [huggingface.co](https://www,huggingface.co). This is a comunity for providing and sharing AI models. There are a ton of models there: 727 000 for now and growing. Keep this site in mind for later. First we need to download [Ollama](https://www.ollama.ai) from their website. We can use this software to run many of the pretrained models you see listed on huggingface.co, like *llama3*, *llama2-uncensored*, *starcoder2*, *mixtral*, ect.. They also have a list of models to chose, pick and download which one you think you will need. As long as you have a solar panel and your laptop, you can survive in the wild or start civilisation once again. You can also train it with you own data or notes, but I'm not gonna do that for now.

## Fabric

Fabric is a tool we can get from GitHub that we can use to pipe any text (like a Youtube transcrypt or a book even), and then feed it to an AI model like Lamma3 to do a well instructed task: like make a proper summary of the text in A format with B stile quotes, C summary, ect. automaticaly. There we have a huge collection of specific prompts that are carefully written out to give proper and exact instruction to the AI, so that it actualy does what we want, in the format that we want.

Fabric is basically a collection of .md files with instructions for the ai how to fufill a task, like: "Think deeply..., Take a step back, think step-by-step about how you will give step 1,2,3...". You are basically talking to it like a human, wierdly enough. You can use the prebuild ones or make your own prompts.

Think about how you will do that with ChatGPT? you go to your browser, load the website, manage through the GUI, maybe load up a conversation with instructions from before, even though it's memory isn't infite from a timeline view, if you don't pay 20$ a month you have a limit of how many times a day you can use it... This is a tool to reduce friction. It's a straightforeward CLI native tool. The more you store your ideas and work in text form, the better, like Vim in a way, it's a tool to help you manipulate you knowledge base and ideas from your own little text world. Clone the [repo](https://github.com/danielmiessler/fabric) and install with *pipx*.

---
---

### Here is a quote from the GitHub page explaining it all

#### Breaking problems into components

Our approach is to break problems into individual pieces (see below) and then apply AI to them one at a time. See below for some examples.

#### Too many prompts

Prompts are good for this, but the biggest challenge I faced in 2023——which still exists today—is the sheer number of AI prompts out there. We all have prompts that are useful, but it's hard to discover new ones, know if they are good or not, and manage different versions of the ones we like.

One of fabric's primary features is helping people collect and integrate prompts, which we call Patterns, into various parts of their lives.

Fabric has Patterns for all sorts of life and work activities, including:

- Extracting the most interesting parts of YouTube videos and podcasts.
- Writing an essay in your own voice with just an idea as an input.
- Summarizing opaque academic papers.
- Creating perfectly matched AI art prompts for a piece of writing.
- Rating the quality of content to see if you want to read/watch the whole thing.
- Getting summaries of long, boring content.
- Explaining code to you.
- Turning bad documentation into usable documentation.
- Creating social media posts from any content input.
- And a million more…

#### Our approach to prompting

Fabric Patterns are different than most prompts you'll see.

- First, we use Markdown to help ensure maximum readability and editability. This not only helps the creator make a good one, but also anyone who wants to deeply understand what it does. Importantly, this also includes the AI you're sending it to!

[Here](https://github.com/danielmiessler/fabric/blob/main/patterns/extract_wisdom/system.md)'s an example of a Fabric Pattern.

- Next, we are extremely clear in our instructions, and we use the Markdown structure to emphasize what we want the AI to do, and in what order.

- And finally, we tend to use the System section of the prompt almost exclusively. In over a year of being heads-down with this stuff, we've just seen more efficacy from doing that. If that changes, or we're shown data that says otherwise, we will adjust.

---
---

🚧 Under Construction!
