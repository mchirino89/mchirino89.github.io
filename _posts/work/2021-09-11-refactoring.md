---
layout: post
title:  "What refactoring is not"
excerpt: Fewer terms have been misused more times than refactoring. Let me explain.
categories: work
tags: [work, coding, rant, success]
---

[referralAutor]: https://www.pexels.com/@yury-kim-181374
[referralLink]: https://www.pexels.com/photo/silhouette-of-man-holding-flamethrower-585418/

[thinkBeforeYouCodePost]: {% post_url /work/2021-03-25-thinkingBeforeCoding %}
[documentationPost]: {% post_url /swift/2021-05-06-documentation-in-practice %} 

{:refdef: style="text-align: center;"}
![compass](/assets/posts/13_refactoring/cover.jpg)
Photo by [Yuri Kim][referralAutor] from [Pexels][referralLink]
{: refdef}

> Let's get this done quickly and we'll refactor it afterwards, when there's **more** time - Someone who's about to code irresponsibly and disguise it as "technical debt"

Fewer things get under my skin more than butchering language. I'm a bit of dork in that aspect so I like calling things for their proper name. One term that has a bad rep among stakeholders, product managers, technical and non technical leaders is "refactoring". 

- "Oh, I need some time to refactor x functionality to prepare for y feature"
- "I'll be refactoring ______ (fill the blank) feature in the meantime, it won't take me long"

The phrases said above by themselves are not dangerous. The real danger lies in the practice (or lack thereof) they so often imply. 

Let's start by stating the concept from the man itself (Martin Fowler)

> **Refactoring** is a disciplined technique for restructuring an existing body of code, altering its internal structure without changing its external behavior. - [Martin Fowler](https://refactoring.com)

He wrote [an entire book](https://amzn.to/38X3U6z) devoted to this discipline (which I highly recommend), specially to coding colleagues who might be misusing it without even notice it. 

You see? Slap some peaces of functionality together, make it barely work in the happy path and calling the day on it under the future promise of _refactoring it later_ is just jargon for lazy coding in my opinion. We can't touch said code later, without documentation, test coverage or even the same mindset we had when we wrote it in the first place, and **guarantee** we won't cause a regression. At least not without performing _manually_ testing, which is almost never the case. What's the point in coding, which ideally should automate more manual labor as it grows, if at the end of the day we're constrained by an ever increasing number of boring manual tasks associated with it?

## We've been using the wrong metaphors all along

In the world of programming, we tend to hear a lot of terms associated with architecture and buildings. But let's stop for a second a think what would happened if a civil engineer would tell to his crew: 

"Well folks, we need to get this done for this weekend because of the deadline. Cut corners where you need to, we'll figure it out later"

No too many building would still be standing, right? I like to think more about software like a garden and we are its caretaker. A garden needs constant maintenance and it evolves with time. A full grown tree doesn't require nearly the same level of nurturing as it did when it was just a small seed growing its roots on the ground. This is the lenses throughout we should be looking at a system and that's only possible with __disciplined__ refactoring.

What exactly does disciplined refactoring imply? Glad you ask: it means adding tests to cover our ~asses~ backs __before__ making any changes to the current code. This is the best way to guarantee we're not making introducing any bugs. It's not perfect, but the alternative (moving stuff around hoping nothing breaks) is just finger crossing 🤞🏽

## "You can't make an omelette without breaking some eggs" 

"I inherited a legacy codebase Mauri, what you're proposing doesn't apply in those cases" I hear you saying. There's another [excellent book](https://amzn.to/3twP8x3) dedicated to address said scenario. I'm not pulling this out my butt people, way more experienced and truly prolific programmers than me have gone through these roads and they all pretty much converge in the same key points

- Identify pain points
- Break dependencies
- Cover the desired piece of code that's about to change with tests
- Make your changes
- _Refactor_ all you want afterwards.

## When the remedy is worst than the disease

Sometimes, just sometimes, the piece of legacy code we're trying to alter is in such a bad state that they most sensible thing to do is starting from scratch. True to be told, these are rare scenarios. What's more realistic is that the engineer who's assigned this endeavor simply doesn't want take the time of following the recipe stated above (either by lack of knowledge, interest or both) and prefers the clean slate approach.

But for argument sake, let's just pretend that we are dealing with one of these rare scenarios. Ok then, we're simply not talking about refactoring here. This is a rewrite and that's definitively something to escalate due to the cheer amount of work it'll require. Otherwise it'll all end up increasing the bad rep refactoring currently enjoy. 

## Conclusion

Let's call things for what they are and many hard conversations will flow naturally. 

- Did you make a mistake estimating a feature and need to cut corners to make it? Don't call it technical debt unless you're at least leaving breadcrumbs behind you in the form of documentation and some form of test coverage.
- Are you having a bad time understanding some piece of legacy code and think it'll be faster starting from scratch? Think again: that piece of code you're so eager to get rid of is already _productive_ and _validated_ in more shapes and forms than any unmaterialized ideas you have in your head.
- Feeling the "need" of refactor the whole project to make it more scalable? BAD IDEA. Refactor only what __needs__ change, the rest of it leave it alone. Part of this job is learning to keep your ego in check and accepting good enough productive beats "perfect" unfinished code every single time.
- There's a "hard" deadline and you're getting pressure to deliver something you know it'll be unpredictable? This is a hard line to walk but part of being professional is having these tough conversations with managers and/or stakeholder. You're the expert after all, they'll demand as much as they can from you unless you explain -without jargon and in simple words- why something can't be deliver in the amount of time you're given.









