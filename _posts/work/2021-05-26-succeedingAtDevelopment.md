---
layout: post
title:  "Skills for succeeding on software development"
excerpt: What if I tell you there's no need to curse on hourly basis during every single working day while writing code? Sounds impossible? Not at all 🤓👨🏽‍💻
categories: work
tags: [coding, no stress, success]
---

[referralAutor]: https://www.pexels.com/@ekaterina-bolovtsova?utm_content=attributionCopyText&utm_medium=referral&utm_source=pexels

[referralLink]: https://www.pexels.com/photo/photo-of-person-using-laptop-4048765/?utm_content=attributionCopyText&utm_medium=referral&utm_source=pexels
[notStressful]: https://www.reddit.com/r/funny/comments/9oyn0p/best_of_luck_reaching_30_john/

[submodules]: https://git-scm.com/book/en/v2/Git-Tools-Submodules
[nicoLinkedIn]: https://www.linkedin.com/in/nicolas-alvarez-555243116/
[gitProKindle]: https://www.amazon.com/Pro-Git-Scott-Chacon-ebook/dp/B01ISNIKES
[swaggerUI]: https://swagger.io/tools/swagger-ui/
[zubia]: https://www.linkedin.com/in/nicolaszubia/
[elen]: https://www.linkedin.com/in/megermino/

[thinkBeforeYouCodePost]: {% post_url /work/2021-03-25-thinkingBeforeCoding %}
[documentationPost]: {% post_url /swift/2021-05-06-documentation-in-practice %} 
[mobileDevPost]: {% post_url /swift/2021-05-06-documentation-in-practice %}  

[covey]: https://amzn.to/3fmCpHR
[influence]: https://amzn.to/3fPYEVB
[heinlein]: https://amzn.to/3hRAf4r

[iosUsability]: https://developer.apple.com/design/human-interface-guidelines/

{:refdef: style="text-align: center;"}
![compass](/assets/posts/11_technicallSuccess/cover.jpg)
Photo by [Ekaterina Bolovtsova][referralAutor] from [Pexels][referralLink]
{: refdef}

There's no need to [age prematurely while coding][notStressful]. As all cognitive intensive jobs, programming is hard and it is true there's some degree of complexity no amount of good practices and new technologies will solve. That's why we're getting payed after all, isn't it? To manage complexity. However there are a few ground rules that will take you a long way despite how complex your work environment might be.

The way I've seen it from the inside –it's been almost a decade since I'm doing this professionally (a decade and a half if we'd include college years)– There are two sides to this coin: 

- [Technical skills](#technical-skills): often called _hard skills_, they refer to the skill set you bring to the table as an engineer. Notice I'm referring to a whole set of abilities because coding alone will not even get you through the door. The following are a set of abilities you ought to master in your way to software development proficiency. I'm not a master myself, however I'd have the fortune to work alongside some prolific developers. All of them share these traits and we should all put effort into diving deep in these topics:

    + [Handle yourself at Git](#handle-yourself-at-git)
    + [Write good documentation](#write-good-documentation)
    + [No laziness for testing](#no-laziness-for-testing)
    + [Keen eye for design](#keen-eye-for-design)

- [Soft skills (_people skills_)](#soft-skills): so many great coders make the mistake to think of these as an afterthought and oh boy they're wrong to do so. No matter how smart you _think_ are, nobody will want to work with you if: A) You're an asshole B) They can't understand you __clearly__ C) __Both__. You work with _people_, develop solutions for _people_ and get feature requests from _people_... Notice a common factor in those statements? (spoiler alert, it's right in the subtitle of this part). It's mandatory to develop social skills if you want to succeed long term, such as:

    + [Proper communication](#proper-communication)
    + [Handle stress well](#handle-stress)
    + [Mentoring](#mentoring)
    + [Empathy](#empathy)

## Technical skills

### Handle yourself at Git
I used to work in a project that implemented [Submodules][submodules] in a team where only [one of the devs][nicoLinkedIn] knew how to properly manage himself around it (suffice to say the rest of us were pretty Jrs in this whole subject back then). Whatever the dependency manager involve in our codebases, we should strive toward a proficient domain in the system version control in our organization –most likely than not _Git_–.

As software engineer, our knowledge in Git shouldn't limit to only committing, pushing and pulling. We should know how to properly solve merge conflicts, finding "lost" commits using `reflog`, versioning releases with tags so they are properly organized and easily findable remotely at all times. Git allows you all of this and more.

We should be able to perform all the above (among other things) comfortably from our terminal of choice. Don't get me wrong, there's no shame in using the aid of a GUI client for Git, but that doesn't excuse us from getting to know and understand the ins and outs of our work flow.

In fact, it's virtually free [becoming a Pro][gitProKindle] in Git. The only investment you need to make is your time and the R.O.I. will translate in less stress, complexity and overall predictability of your everyday working flow.

### Write good documentation
As stated in detail in [one of my previous post][documentationPost], writing __good__ documentation is easier than ever. This is key for the scalability of any project since it eases the onboarding process of any newcomer, no matter his or her seniority level. Also, having a well documented system makes hard to introduce unnecessary complexity into it along the way.

Even though I specialized myself on Swift and other Apple related technologies, I know for a fact it's painless generating good documentation for other platforms. Just to give an example involving Backend folks, there's [Swagger UI][swaggerUI] which allows us to visualize in a human friendly way the data flow in a given set of APIs as well as interact with it.

[![SwaggerExample](/assets/posts/11_technicallSuccess/swaggerExample.jpg)][swaggerUI]

### No laziness for testing
> I know what I'm doing, I don't need to write tests
> 
> Tests slow me down
> 
> It's just a proof of concept, there's no need to write tests.

I've personally heard all of the above plus others. This tends to be a "polemic" topic, I even wrote [about it][thinkBeforeYouCodePost] before. It's only polemic because it hurt some egos, but let's say it again in case there's a doubt: Tests don't slow down software delivery any more than an shitty all-nighter crush session of coding will mess up your code base. You'll realize this when trying to modify a little thing and break something else completely unrelated elsewhere. Those are the kind of headaches tests prevent.

I'd argue those "extra" __minutes__ of pause between writing a failing test first and then implement the proper code to make it pass are _nothing_ compare to __the hours__ wasted in agony debugging logs (or adding them if they don't exist) and spreading breakpoints all over the code base hunting bugs because "we knew what we were doing and therefore no tests were needed". Give me a break 🤦🏽‍♂️.

### Keen eye for design
This is kind of a segue to the next part but it's still belongs to the technical side in my point of view. By having an eye for design I don't mean necessarily developing skills with common design tools such as Adobe Photoshop, Figma, Sketch, inVision or the likes (although it wouldn't hurt to say the truth). What I'm talking about is developing critical thinking regarding the designs you'll be requested to implement in your UIs.

If you're lucky enough to work alongside a UI team, there should be a healthy communication among all of you. We as developers shouldn't be roadblocks in their infinite creativity and thrive to implement new things anymore than they should cause us headaches with impossible requests. This is only achieved by communicating effectively. 

Your designer doesn't need to know (nor cares) about the technical limitations your code base -or you for that matter- may have. All [he][zubia] or [she][elen] cares is to materialize whatever they sketch into reality and you'll be key in this part should you choose to be proactive about it. 

Offer resistance whenever someone hands you a design that might go against [usability][iosUsability] and guide them with your system knowledge so both of you can arrive to the desired outcome. Collaborate with them and help them see what's possible for any given deliverable in order to gain user insights from any new experiment your product is testing.

## Soft skills

### Proper communication
It's not the entire responsibility of your interlocutor to completely understand what you mean 100% of the time. Put your ego aside whenever your first instinct is "This f3ck!ng idiot! Am I speaking in Latin? What part of what I just said wasn't clear?! 🤬". 

Forget unnecessary jargon whenever possible, speak as if you were always talking to a non technical person and go into details only when asked to. This alone will get you the trust of those less experienced than you and non developers college as they will see you as someone approachable.

Also, now that most of our communication is written instead of verbal you need to be very careful with jokes, pun, or anything that might very well be misunderstood. In person chatting has all sort of body language and voice intonation coming into play that are simply gone when writing. Be concise and seize the advantage writing provides which is taking time to think before hitting _send_.

I know it's a lot to digest but trust me, it's better to be extra careful than having HHRR knocking on your door due to an offense you accidentally made by trying (and failing) to be funny.

### Handle stress well
No matter the systems in place and the discipline you develop, there will be stressful times you'll have to deal with. I'm not trying to be dramatic here but most often than no they will define you within your organization. It's up to you if that definition is "a reliable colleague" or "the kid (no matter the age who breaks down under pressure".

Meditate, make sure to sleep and eat well consistently and get some regular exercise. Let's break the stereotype of the ungroomed guy with poor body complexion who's sitting all night in front of the keyboard. You __need__ to take care of your body as a whole in order to perform on the top level.

If it's true your code should be predictable, it's also true –until some degree– you should to and this can be greatly improved by being an organized professional. Aim to be as organized as possible with your professional stuff as well as your personal ones in order to keep unpleasant surprises out of your routine.

### Mentoring
> "When One teaches, two learn" – [Robert Heinlein][heinlein]

As mentioned before, [you can't accomplish great, sustainable things all alone][mobileDevPost]. Therefore it's important to share your knowledge with others, there's nothing but advantages to doing this such as cementing core in your understanding of complex topics, leveling up your team around you and enhancing the communication skills mentioned earlier. There's no bigger prove of [proper communication](#proper-communication) than teaching others.

A byproduct of mentoring others is than you slowly but surely create a following around you and that turns into [influence][influence] and leverage along the way.

### Empathy
> You have two ears and one month. Use them accordingly - [Stephen Covey][covey]

Remembers I mentioned above you work with people? Well all of us have good and bad days and these can even stretch out for long periods of time due to a variety of personal factors. Whenever possible pay attention to your surroundings, coworkers may need help and might be too shy to ask for it or don't even know to do it. This is commonly disguised as poor performance but can be very well go to the other extreme: someone in your team overworking. Reach out to them.

Sometimes all it takes is listening someone to help them. I cannot stress enough how being an empathic colleague will help you and others around you fostering a healthy environment.

## Conclusion 
I'm a big fan of _critical thinking_. Challenging the status quo whenever it made sense to do so has brought me some headaches but it also opened doors where I never thought possible. Remember: you're not a monkey just hitting the keyboard, __software engineers are paid to think__. 

People are often open to debate with the goal of achieving a better outcome for the final solution (if they aren't you might be in a toxic environment so be careful). At the end of the day, you're also a user so your opinion matter as well.




