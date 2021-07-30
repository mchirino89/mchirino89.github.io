---
layout: post
title:  "📖 Books I've read: Driving Technical Change (by  Terrence Ryan)"
excerpt: How then do you properly influence your peers into adopting practices and technologies you're pushing foward? 
categories: books
tags: [books, developer, software, coding, people]
---

[drivingTechChange]: https://amzn.to/3ePK00T
[imageSource]: https://www.flickr.com/photos/toddle_email_newsletters/15596940251
[tdd]: https://www.agilealliance.org/glossary/tdd/#q=~(infinite~false~filters~(postType~(~'page~'post~'aa_book~'aa_event_session~'aa_experience_report~'aa_glossary~'aa_research_paper~'aa_video)~tags~(~'tdd))~searchTerm~'~sort~false~sortDirection~'asc~page1)

[testing]: {% post_url /swift/2020-11-02-testing3rdFwk %} 
[docPost]: {% post_url /swift/2021-05-06-documentation-in-practice %}

{:refdef: style="text-align: center;"}
![bookCover](/assets/books/drivingTechnicalChange.jpg)
{: refdef}

You can't accomplish great things completely on your own. That's a fact I struggled way longer than I should due to the disproportionate ego I had (and till some degree still carry with me). We need people on our side to build solutions together. How can we reach out in order to harness all that human potential in the right direction?

The first thing to learn here is this: we're emotional creatures. No matter how hard we fool ourselves into believing **only** rationale motivate us. In that regard, a combination of both soft skills and politics will talk you a long way in influencing your peers into adopting the practices and technologies you're pushing forward. This is the premise of [Driving technical change: why do people on your team don't act on good ideas and How to convince them they should][drivingTechChange].

The author lays out a couple of interesting blueprints for us and how they relate to each other. Let's check them out

- [Skeptic patterns](#skeptic-patterns): here's exposed, in an exaggerated matter acknowledge by the author himself, some of the most common folks we'll likely find in our organizations. One important thing to note is that no pattern excludes another so we shouldn't get surprised when _X_ or _Y_ teammate has more than a single trait in his or her personality.
    
    + [Uninformed](#uninformed)
    + [Herd](#herd)
    + [Cynic](#cynic)
    + [Burned](#burned)
    + [Time Crunched](#crunched)
    + [Boss](#boss)
    + [Irrational](#irrational)

- [Techniques to approach them](#techniques-to-approach-them): once identified the predominant trait a fellow colleague of ours posses, it's time to move on into action in order to persuade them. _Spoiler alert_: logic alone won't do the trick here.

    + [Gain expertise](#gain-expertise)
    + [Deliver your message](#deliver-your-message)
    + [Demonstrate your technique](#demostrate-your-technique)
    + [Propose compromise](#propose-compromise)
    + [Create trust](#create-trust)
    + [Get publicity](#get-publicity)
    + [Focus on synergy](#focus-on-sinergy)
    + [Build a bridge](#build-a-bridge)
    + [Create something compelling](#create-something-compelling)

## Skeptic patterns

### Uninformed
This might be the easiest one to bring into your crew. The main reason they're not using any given technology and/or technique is simply lack of awareness about it. Remember no everyone in tech keeps going beyond working hours, and that's ok. 

### Herd
They are the folks following the guidelines set on them, so there shouldn't be any issue in informing and training them into joining your cause.

### Cynic
This one is a special case in my humble opinion. The underlying motivation behind their attitude could be just looking smarter that someone else in front of an audience in order to impress and maintaining some form of status quo. Others just don't want to put in the work involved in growing and therefore draw on into cynicism as a justification. Their Achilles heel: make your solution the smart choice, so questioning it makes them by comparison less smart. Their own egos will keep them in check this way.

### Burned
This group demands empathy from us since they share some "tragic" history with the technology/technique you're trying to implement. Having TDD as a policy imposed on them when they weren't still capable enough to produce solutions fast enough alongside tests could be an example of this. In said scenario, there wasn't the chance to appreciate tests for the worth they bring to the table but instead look at them as bureaucracy to fulfill before doing "the actual work".

### Time Crunched
![tooBusyToImprove](/assets/posts/12_drivingTechChange/busy.jpg)
[source][imageSource]

The image above says it all about this group. Their motto is: "there's never time to do it right, but there's time to do it twice." The thing to keep in mind here is that, even though their current method may waste time, they know exactly how much of it will be wasted. Some of them are truly time crunched because their workload exceeds their resources. The key with them is showing them your solution as a relief. Save them time and they'll play along with us and whatever we're selling. 

### Boss
Our industry has these tricky power balances that don't truly make sense anywhere else. For instance, your boss probably doesn't understand the technology you're using and it's completely ok (even expected) since IT thrives with specialization. It's how we communicate our ideas and insights that will make or break whatever lever we're trying to pull. The key here is speaking in boss' language: there's little value to your non technical manager _how much more efficient a piece of algorithm is_; on the other hand if what you did _reduces ongoing project costs_... Now we all understand.

### Irrational
The last one of the group is a dead end and how you deal with them is completely different of any of the previous approaches. For starters: you can't convince them of anything. Instead your job is to contain them. Try to ignore their complains as long as possible and have management to mandate your technique on them. I know it sounds authoritarian but some people just want to see the world burn 🃏

## Techniques to approach them

### Gain expertise
You need to master whatever you're selling to your organization. If it is implementing CI, testing practices and/or documentation, you need to become knowledgeable in these subjects in order to help others whenever and wherever they get stuck. The tough part will be finding someone to teach your learning afterwards. Be humble at all times and remember: you're trying to convert people leading by example, not turning them into [burned ones](#burned).

### Deliver your message
> If you build it, they will come – Tech fallacy 101

If we don't tell people about our tool, they'll never adopt it. However, there's the right and the wrong way to do this.

- _Wrong way_ ❌: "your choice is wrong. Pick mine instead."
- _Right way_ 👏🏽: "let me show you how _X_ can help us with _Y_."

There are no absolutes and most of the time one thing doesn't automatically exclude another so unless the current state isn't affecting what your promoting don't even address it. Keep in mind that what you say is _less_ important than _how_ you say it.

### Demonstrate your technique
> Setting an example is not the main means of influencing others, it is the only means. - Albert Einstein.

It is one thing to talk about a theoretical improvement and it is quite another to show it in action. Besides, people believe what they are shown more than what they're told. Whatever you're pushing into compliance in your team, find a way to demo it. Extra points if you can time it properly, i.e. solving a pain point with said solution.

### Propose compromise
This technique propose the bold move to challenge the status quo. In all organization there are rules that were set in response to an incidents; policies to prevent those incidents from occurring again. The thing is that most of the time such policies fall outdated and nobody ever questions them again. Developers should be able to say "We must do _X_ because of _Y_", if no one remembers this _Y_ then you're in front of a questionable policy.

Just keep in mind that no every organizational rule can be perfectly replaceable with a technology change. Manual testing is a good example of this: no matter how tedious it might be, no amount of automation and test coverage will completely remove it from the picture. The best we all can do in this instance is to automatize the boring cases as much as possible.

### Create trust
If people don't trust us, we'll be fighting uphill even justifying the most obvious tools. The cautionary tell with this technique is warning us about inducing fear to manipulate our coworkers into doing something just out of fear. Eventually people wise up, the word is out and not only does this renders the entire technique useless but our reputation suffers a big blow.

In an environment with big egos and a whole bunch of buzzwords flying around all day, being wrong and openly admitting it allows people to trust you. Don't be the guy who knows something is wrong but is too committed into it to backpedal just out of fear of owning a mistake.

### Get publicity
You need to build some amount of street cred in order to demonstrate reliability in whatever you're proposing. You think testing is a necessary practice? You better have at least a [post in your blog][testing] relating how to do it properly.

### Focus on synergy
Unless you're employed by a technical firm, technology doesn't set the direction for your company. Business needs will always trump technology concerns so your tool must be aligned said needs, this is how you create a stronger argument around it. 

Can your technique make scaling easier? Reduce spending? Increase conversion rates? Then management will be behind you because they will feel listened instead of constrained by engineering. 

### Build a bridge
Bridges are half baked tools or techniques. They aren't the ultimate solution but they differ from the current status quo. Think of them as a step in the right direction toward the goal. Remember: multiple little changes are often easier to achieve than a massive big one.

An example of this is [TDD][tdd]. This isn't something a developer achieve in a week of training, it's a discipline developed over years and years of practice and consistency. The other side of the spectrum is no coverage at all so a bridge in this scenario might be starting out with some unit tests. When the team is consistently writing them, you could push forward integration test and maybe some snapshot tests as well and so forth. 

### Create something compelling
People are much more accepting of something they've resisted when they are the ones to choose to stop resisting, rather than having someone else force them into using it. For instance: a reason people might resist writing documentation is because they don't see the value in it since it's hard to find afterwards. [Build a tool][docPost] that facilitate this and you'll bring followers to your cause. 

## So how do all this come together?
I know, I know... I just went on and thrown a whole lot of information with no clear relation between on side and the other. The gist of it all is that each type of skeptical can be handled with a particular set of techniques.

![match](/assets/posts/12_drivingTechChange/relationship.jpg)

## Conclusion

As stated at the beginning: we humans are **emotional** creatures son don't overestimate the effectiveness of these new learned techniques in the art of influencing people. 

Start small and grow your following as you go. Kick off your journey by ignoring the _irrational_, target those willing to improve themselves and harness the newly converted ones in order to sway management so your solutions finally become the norm.

Just remember: problems are infinite and you'll have to start over each time there's something you want to change. This is a journey, not a destination so above all be patient. I encourage you to go read the whole book and not just take my word for it, some of the examples will show you the point far better than this summary.

