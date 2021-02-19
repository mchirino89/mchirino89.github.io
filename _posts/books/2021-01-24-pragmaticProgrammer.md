---
layout: post
title:  "📖 Books I've read: The Pragmatic Programmer (by  David Thomas & Andrew Hunt)"
excerpt: There's a fine line between thinking quick on your feet and being reckless while coding. "Pragmatism" is an appropriate term for such mindset and this book goes deep into guiding programmers to such state.
categories: books
---

[peya]: https://medium.com/latam-list/pedidosya-launches-online-supermarket-8641581dc879
[pragmatic]: https://amzn.to/3axuYei
[authors]: https://gotopia.tech/bookclub/episodes/pragmatic-programmer-in-2020

[review]: {% post_url /books/2020-09-15-managersPath %}
[testing]: {% post_url /swift/2020-11-02-testing3rdFwk %} 

[planning]: https://quoteinvestigator.com/2017/11/18/planning/#more-17261
[10x]: https://dev.to/turnerj/the-10-points-that-make-up-real-10x-engineers-4mj4
[biases]: https://neurofied.com/thinking-fast-slow-down/
[git]: https://git-scm.com
[contract]: https://www.eiffel.com/values/design-by-contract/introduction/
[tdd]: https://www.agilealliance.org/glossary/tdd/#q=~(infinite~false~filters~(postType~(~'page~'post~'aa_book~'aa_event_session~'aa_experience_report~'aa_glossary~'aa_research_paper~'aa_video)~tags~(~'tdd))~searchTerm~'~sort~false~sortDirection~'asc~page~1)
[fowler]: https://www.youtube.com/watch?v=Z8aECe4lp44
[notes]: https://www.goodreads.com/notes/52715562-the-pragmatic-programmer/95758480-mauricio-chirino?ref=abp

{:refdef: style="text-align: center;"}
![bookCover](/assets/books/pragmaticProgrammer.jpg)
{: refdef}

Following the same line of my previous [review][review], this time the focus goes for [The pragmatic programmer: Your Journey to Mastery][pragmatic]. A good rule of thumb is the test of time, so when a book that publishes a 20th anniversary edition with high praises crosses your way then it's a non brainer to pick it up.

Being a good programmer is a difficult job, there's no way around this; going a step beyond means being proficient while producing results for the business you're in AND working well with others... That's a higher level of consciousness we all as developers should strive to and, as all big things in life, it's possible to do so in incremental steps. Let's breakdown some of the core learnings I got from the [authors][authors].

## Programmers is a poor label for what we do 

> Even though your title might be some variation of “Software Developer” or “Software Engineer,” in truth it should be “Problem Solver.” That’s what we do, and that’s the essence of a Pragmatic Programmer. – (p. 429) Kindle Edition

In reality our main goal (and value we provide to our companies) is handling complexity in the best way we know how. That's why communication is such a big theme around this book, we MUST communicate well. By *communicate well* they explicitly make the clarification that only speaking is not enough, whenever we talk/write we must think in our audience and ask ourselves "does this I am saying work for them and convey the message in a clear manner?". 

Keep always in mind that your audience is completely subject to its context; it could be your future self or some fellow developer when you're writing a piece of code or documentation, your client or PM whenever you're explaining a limitation for a feature request or even designers when you are in a meeting planning a UI change. Do your best to express clearly in terms they all understand.

## There's no such thing as predicting the future. But be prepared

> Aren’t we supposed to design for future maintenance? Yes, but only to a point: only as far ahead as you can see. The more you have to predict what the future will look like, the more risk you incur that you’ll be wrong. Instead of wasting effort designing for an uncertain future, you can always fall back on designing your code to be replaceable. – (p. 204) Kindle edition

There's a famous quote attributed to the late US president Dwight D. Eisenhower that says ["Plans are worthless, but planning is everything"][planning] and he explains the paradoxical meaning of this phrase by stating that even though what you might organize for a future, by the very definition it'll be an *unexpected* situation and it's not going to unfold the way you envision it; nevertheless having a framework in place will make dealing with it a whole lot more manageable.

You can't predict the future, no matter how many variables you think you're taking into account. So whenever you find yourself building a complex architecture around a solution stop for a second a think: "is this easily replaceable for someone other than me?", in case the answer is *no* then backpedal your way out of the corner you were painting yourself into. In this same spirit fall all monolithic system, there's no defense for them nowadays because local fixes don't exist in a monolith  (everything is highly coupled and [testing][testing] gets tricky).

## Coding, fast and slow

> What to Say When Asked for an Estimate? You say “I’ll get back to you.” – (p. 127) Kindle edition.

If you leave with only one thing from this post, beside the encouragement of reading the book itself, is this one above. Of course, this only works the first time so make sure you do your proper diligence before getting asked a second time. 

The moral of the story is that, as stated previously, we are not fortune tellers and we as a human beings are definitively prone to hardcoded [biases in our psyche][biases] that render us vulnerable to hard questions such as estimations. Think **hard** when estimating a task and communicate your confidence level next to your estimation value.

## Just because you know your way around a compiler doesn't authorize you to be a jerk

> Dealing with computer systems is hard. Dealing with people is even harder. – (p. 173) Kindle edition

There's no to much to explain here: the fact that you are good, hell even if you're a so call [10X engineer][10x], doesn't give you the right to treat anyone in a derogatory manner. This directly relates to the point above regarding communication.

Want to prove yourself the smartest one of them all? See how many of your peer fully comprehend the message you give in a timely manner and that's the key metric for your effectiveness. Remember: no great product is sustained alone by a single individual.

## Paranoia is a good thing (sort of)

> Remember, if your contract indicates that you’ll accept anything and promise the world in return, then you’ve got a lot of code to write! – (p. 177) Kindle edition

When working on cross platform teams, there will be standards and agreement in place in order to fulfill requirements and  achieve robust system communication (there's a limit at how much [git][git] will help you without said agreements) and that's where design by contract enters the picture. A contract defines your rights and responsibilities as well as those of others.

The beauty of [design by contract][contract] is that there's no room for negotiating with a wide range of bugs that might come out when your inputs are left uncovered to accept anything. And, as a bonus benefit, once you got your interfaces well defined then you're on your way to apply [TDD][tdd].

This is what they mean by paranoia, since "pragmatic programmers don't trust themselves either". That's how contracts protect us even from our future selfs.

## A greater good

> Our goal as developers is to delight users. That’s why we’re here. Not to mine them for their data, or count their eyeballs or empty their wallets – (p. 427) Kindle edition

I really loved how the book ends on a note on ethics, even though they go in length halfway through the reading to explaining in detail security risks and how to dismantle them. [Martin Fowler][fowler] said in one of his talks that we're not just coding monkeys behind a keyboard translating orders as they come.

As contributors of the business we are part of, we should be proud to put our signatures on any piece of work we deliver. If that's not the case, whether by company culture, values or quality of it then we should really reconsider the direction our careers are headed.

Don't just take my word for it. Go ahead and dive in for yourself, I literally have [pages of notes][notes] I took while reading it. Standing on the shoulder of giants is a great way to improve our skills by seizing their advices and experience, but be an active reader by all means; that means adding any piece of knowledge you find useful into your repertory and put it to practice. Happy reading ☺️📚
