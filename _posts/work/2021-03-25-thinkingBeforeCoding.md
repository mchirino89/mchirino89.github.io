---
layout: post
title:  "Think before you code"
excerpt: Who are we really saving time for when we take shortcuts on daily basis in our codebases? 
categories: work
tags: [rant, tech, productivity, testing, work]
---

[referralAutor]: https://www.pexels.com/@yankrukov?utm_content=attributionCopyText&utm_medium=referral&utm_source=pexels

[referralLink]: https://www.pexels.com/photo/crop-unrecognizable-financier-using-calculator-on-smartphone-near-dollar-banknotes-4386324/?utm_content=attributionCopyText&utm_medium=referral&utm_source=pexels
[badMotto]: https://devops.com/the-fallacy-of-move-fast-and-break-things/
[debt]: https://martinfowler.com/bliki/TechnicalDebt.html
[neilQuote]: https://twitter.com/neiltyson/status/1368199535026188296
[neilLetters]: https://amzn.to/3tUrdGH
[itDemand]: https://www.statista.com/statistics/967095/worldwide-it-industry-growth-rate-forecast-segment/
[busFactor]: https://www.process.st/bus-factor/
[ego]: https://amzn.to/3blgrl1
[document]: {% post_url /swift/2020-07-24-self-documented-code-with-flexible-swift-enums %}
[tests]: {% post_url /swift/2020-11-02-testing3rdFwk %}


{:refdef: style="text-align: center;"}
![compass](/assets/posts/9_timeSaving/cover.jpg)
Photo by [Yan Krukov][referralAutor] from [Pexels][referralLink]
{: refdef}


[Move fast and break things][badMotto] doesn't cut it anymore. The IT industry is infamous for being stressful, admits it to be a fast paced world. However, this perceived never-ending hurry has normalized a few fallacies, being the most famous the ones below:

> We have a tight deadline, the client is breathing down our necks! – Project manager with poor communication skills in a software factory

> The competition is outpacing us, we need to move faster! – Non technical, overreacting C-level executive

> This is a MVP, no time for good practices now. – Someone who has never had to maintain legacy codebase

All of the above are often used as excuses to take shortcuts, justifying a whole lot of short-term, "once in a lifetime" hacks in order to save time. My question is "save time to whom?"; someone is going to maintain/redo the mess left behind eventually. This type of thinking leads to swipe a wide variety of shortcomings under the rug when uncertainty, doubt and false assumptions take over the better part of our good judgment.

[Technical debt][debt] is the common euphemism used for this sort of situations. Don't get me wrong, there are time and places that justifies it, until certain extend and with the right approach from the very beginning: leaving known pitfalls well documented and only doing the minimum amount of lazy coding. I prefer calling everything else for what it truly is: irresponsible coding.

## Independence and its consequences 

Whenever I hear a developer saying "I know what I'm doing, I don't need nor have time for writing tests 🧐", what I really hear is "This is how I've always done things and it has sort of worked for me. Stay out of my way 🤬". And that would be a perfectly fine approach to take... If the developer saying that is working on his/her solo side project where he/she is the only one involved in maintaining it.

> [To abolish mask-wearing laws in some States while the rest of the Nation keeps theirs is like designating a peeing section of the swimming pool.][neilQuote] – [Neil Degrasse Tyson][neilLetters]

I find the above quote hilariously brilliant, and it applies directly to our case in point. Allowing someone in our team run wildly across the codebase with such a dangerous mindset is only going to cause us pain the midterm while providing a false rapid development sensation in the short one. We can't shame developers for not writing test if the reason they don't do so is lack of knowledge (the same being true for documentation). But that doesn't cover those who *do* know and refuses to do so out of arrogance and pride. 

## Being a Pro

A good test suite alongside with well documented internal API are strong signs of professionalism, that's something to be proud of and even brag about. For all those engineers who "know what they're doing" I say this: prove it. If you're so good how you think you are, write tests and document your work so us mortals don't break your precious, complex/unreadable logic in every turn while you're not around.

Another strong indicator is the learning and teaching culture within a company. I have yet to find senior engineers who are not good at communicating and sharing their knowledge among peers, so beware if you're making a career in a place where you see all of the bad signs stated above and little (or none) of the good ones.

## Beware of silos 

People trade jobs all the time, specially in our industry where demand just keeps [growing and growing][itDemand]. A single developer taking a vacation or calling in sick for a few days shouldn't be a noticeable productivity downgrade in any medium size team or bigger. Otherwise the [bus factor][busFactor] is dangerously close to 1.

If the 10x-rockstar-ninja developer of your team drags his feet every time knowledge sharing is expected from him then you should really be careful. You might not be in the presence of a rare highly productive engineer but on the contrary, a bad communicator with low confidence and a high prize for job security above all else. These are the kind of toxic people who single handily tear entire teams apart from the inside.

[Document][document] your learnings along the way, write [tests][tests] regularly and help keep [egos][ego] within your team in check. Toxic cultures are hard to get rid off but it's worthwhile endeavor. We all should be striving toward improving the environments we spend so many of our waking hours immerse in.