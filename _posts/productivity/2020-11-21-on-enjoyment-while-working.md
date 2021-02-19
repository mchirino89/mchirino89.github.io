---
layout: post
title: "5 key points in enjoying writing code for a living"
categories: productivity
excerpt: Coding has been labeled as a stressful job and it is, until certain degree, an intense heavy, taxing-brain endeavor. That being said, beware not to incur in self-sabotaging practices.
---

[referralAutor]: https://www.freepik.com/look-studio
[referralLink]: https://www.freepik.com/photos/business
[craftsmanship]: https://amzn.to/3bjGdGp
[cleanCoder]: https://amzn.to/3dsLuyj
[greenfield]: https://en.wikipedia.org/wiki/Greenfield_project
[leadTime]: https://www.investopedia.com/terms/l/leadtime.asp
[unfair]: https://oliveremberton.com/2014/the-problem-isnt-that-life-is-unfair-its-your-broken-idea-of-fairness/
[recommendations]: {% post_url /books/2020-06-20-recommendations %}
[rama]: https://www.linkedin.com/in/ramiro-d%C3%ADaz-ortiz-3bb98245/
[quote]: https://amzn.to/2Nl2GLm
[pipeline]: https://amzn.to/2OP56Ch
[previousPost]: {% post_url /productivity/2020-06-28-on-being-productive-with-endless-distractions %}
[attentionSpan]: https://dl.motamem.org/microsoft-attention-spans-research-report.pdf
[easyCode]: https://books.google.com.uy/books?id=ESAZBAAAQBAJ&pg=PT130&lpg=PT130&dq=Robert+Galanakis+the+code+easiest+to+maintain+is+the+code+that+was+never+written&source=bl&ots=lZpoEPV9dx&sig=ACfU3U2nYrV3Afc3snCOmApmYBjEWvRcwg&hl=en&sa=X&ved=2ahUKEwiNs7vH7ZbtAhUIIbkGHdfkAhQQ6AEwBHoECA8QAg#v=onepage&q=the%20code%20easiest%20to%20maintain%20is%20the%20code%20that%20was%20never%20written&f=false
[sprint]: https://www.scrum.org/resources/what-is-a-sprint-in-scrum

{:refdef: style="text-align: center;"}
![enjoyment](/assets/posts/5_codingEnjoyment/cover.jpg)
Image by [lookstudio][referralAutor] from [freepik][referralLink]
{: refdef}

Remember the first time you typed a few lines of code and something *magical* happen on a computer because of that? Chances are you do if you're a profesional programmer who enjoys his or her [craftsmanship][craftsmanship]. I'm going to share a little bit of my journey into coding from my personal path (university -> job field -> self improvement/online learning -> repeat last two steps), if you're a self taught coder as so many out there don't quit on this post just yet. You might learn a thing or two, or the very lest feel related to some of them.

Back in college, my workflow for a coding assignment was as follow: 

1. Kind of understand the requirements
2. Code my way through it
3. Tweak as I gather feedback from my peers and/or subject teacher. 

Fast forward some years into my first two or three jobs and the process was pretty much the same with different actors; ask the client/project manager once I was halfway in the development process and "refine" the project to sort of fit what It was expected to do. If you're currently following this same process, then you're no stranger to the daily pain disguised as stress of no productivity, long after hours shift in order to meet deadlines and probably a generalized unfulfillment towards the job itself (maybe even asking youself if it all worth it).

Leaving deep philosophical/existential questions aside, I'm here to tell you there is hope and It doesn't have to be like this at all. I've been there so trust me when I say most of our daily frustrations are self imposed and are reversible, no without some (major) adjustments in our general behavior.

## 1. Be professional from the very beginning.

The beginning of [Clean coder][cleanCoder] was quite eye-opening for me due to the meaning of the tale uncle Bob describe in it. In a nutshell, he tells the story of how the company they were working for saw their financial department as a group of _professionals_ and their IT department didn't fit (in their manager's eyes) that category. Then he goes on further to explain how to handle ourselves in our working environment in order to be perceived as such. 

It's an excellent book and I can't [recommend it enough][recommendations] but the bottomline of it all is this: ACT AS A F*CK!NG PROFESSIONAL IF YOU'RE EXPECTED TO BE TREATED AS ONE. My bad If I got upset but It's extremely nerve-racking when I see a peer of mine giving such loosely and careless answers such as "it should work", "it ran on my machine" or (one of the most repeated phrases in IT world when a bug is reported) "that's impossible". In such circumstances It's only understandable why managers and clients alike can and will lose trust in our word. 

## 2. Ask until you get it

In one of my previous jobs I had the opportunity to work with [a brilliant technical lead][rama] (with a huge impostor syndrome complex) who used to tell me, whenever he noticed I didn't fully understand a requirement handed to me: 
> "Ask, ask and then ask again. Keep asking questions until you get what you need to implement and why". 
 
It sounds silly but I've noticed it is really common to feel shame in asking questions due to a dumb fear of being perceived as incompetent or flat out a pain in the 🍑. Two things:

1. No one is going to think less of you for asking clarification on a given requirement. Chances are it was poorly written in the first place or that you're dealing with a complex scenario which requieres deep knowledge on a really specific business rule which leads me to the second point
2. The real pain in the ass is doing something you weren't supposed to do in the first place. Management father himself famously said it:
> [There is nothing quite so useless, as doing with great efficiency, something that should not be done at all][quote] - Peter F. Drucker

## 3. Build a test suite 

If you're still following the same process I described at the beginning of this post in your daily job then I must say this to you: you're adding unnecessary stress into your workflow. No matter if your team has a dedicated QA engineer, a designer who is going to validate every single one deliverable you produce or even all of the above, if you're not slowly but constantly building an automated testing suite for your codebase then you're not only doing needless extra labor but also steeling from your employer by deliberately incurring in higher development costs due to the lack of automated pipelines that over time, according to [productivity research][pipeline], all projects should strive to get.

Whether you're working on a [greenfield][greenfield] project or inherit a legacy codebase, writing tests should be a default for you since they'll make you more productive by trimming significant [lead time][leadTime], add an extra safety and documentation layer as well as providing overall confidence in the code you ship since it's very difficult to write tests for requirements you don't understand. 

## 4. Don't trust your memory

As mentioned in a [previous post][previousPost], we now live in the attention economy -no wonder so much competition over it crippled it below that of a [goldfish][attentionSpan]-. With this in mind and being honest with ourselves, It's only logical that keeping notes of things we noticed down the way is a trustworthy mechanism for fuzzy requirements, code smells we found on the codebase (usually in the form of `TODO`s), random ideas that pop out of our heads and so forth. Get use to have a pen and paper at your reach when coding and in meetings (or your favorite note taking app on a fairly easy access).

## 5. Learn HOW to say no (a.k.a negotiate) 

Being mad at your boss or client for setting  unrealistic goals is like being upset because [life is unfair][unfair]. They will always demand the best they can get in the least amount of time, that's *their* job and that doesn't make them a bad person. It is **YOUR** job to help them navigate uncertainty and manage code complexity, after all it is you the one who has to deal with the code base at the end of the day. 

Let's break this through with another example of mine: earlier this year I was asked to implement an "MVP" for a feature. I put it into quote marks because said MVP involved dealing with networking, persisting state in device's disk, integration with a massive legacy codebase and all the while keeping impecable UI in all permutable scenarios; timeframe for this: ideally a two week [sprint][sprint]. You already might see how the odds were against me from the very beginning. 

It would seem I had only a couple of options:

- **A)** Say no, hold my ground under unreasonable demands and be marked as a non-cooperative team player. 
- **B)** Say yes. Do unfair and most likely unsuccessful overtime hours in order to meet the deadline with a poorly written (with no coverage) code that I was responsible to maintain later on when bugs surely arise. 

I chose option **C)**: said no to all the initial requirements and negotiate what could be trimmed in order produce incremental deliverables in later stages. In a nutshell, actually produce a real Minimum Viable Product for a proof of concept. 

## 6. Bonus one: Prioritize 

This goes hand in hand with the previous point. You should be proactively looking for ways to deliver the most value to the business with as little coding as possible. This may sound counter-intuitive since the premise of this post is the enjoyment of coding itself, nevertheless make your greatest effort in letting your superiors know when technical limitations exists in their requests. Remember, you're the technical expert which is why they come to you to develop the solutions, no matter if said solutions involve zero lines of code.

I'm not saying you should avoid working, just get to the real reason why you're doing what you've been asked to do. If you can't understand that, chances are pretty high you end up delivering something that doesn't fit the expected result. 

---

If nothing from above caught your attention or resonated with any previous experience of yours in your job, leave with this: avoid writing code you don't fully understand the intent behind it.
>[The code easiest to maintain is the code that was never written][easyCode] - Robert Galanakis
