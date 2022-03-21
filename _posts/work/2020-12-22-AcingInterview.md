---
layout: post
title: "Acing(ish) your iOS interview"
categories: work
excerpt: Job hunting doesn't have to be a dreadful endeavor for an iOS developer. Let me show you what I mean
tags: [engineering, coding, job, interview]
---

[resolutions]: https://www.nytimes.com/guides/smarterliving/resolution-ideas
[research]: https://www.glassdoor.com/index.htm
[referralLink]: https://www.freepik.com/free-photo/headhunters-interviewing-female-job-candidate_3952566.htm
[referralAutor]: https://www.freepik.com/yanalya
[softSkills]: https://www.thebalancecareers.com/list-of-soft-skills-2063770
[toptal]: https://www.toptal.com
[twitter_username]: http://twitter.com/chirino89m
[crackingTweet]: https://twitter.com/Chirino89M/status/1325781407029923844
[massiveVC]: https://engineering.etermax.com/dealing-with-massive-view-models-using-mvvm-on-ios-74b2697557ce
[arc]: https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html
[lifecycle]: https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/WorkWithViewControllers.html
[valueType]: https://developer.apple.com/swift/blog/?id=10
[gamma]: https://amzn.to/3samWy8
[document]: {% post_url /swift/2020-07-24-self-documented-code-with-flexible-swift-enums %}
[tests]: {% post_url /swift/2020-11-02-testing3rdFwk %}
[gonza]: https://www.linkedin.com/in/gonzalo-diz/
[xcodeError]: https://stackoverflow.com/questions/50718018/xcode-10-error-multiple-commands-produce
[mbp]: https://www.apple.com/shop/buy-mac/macbook-pro/16-inch-space-gray-2.6ghz-6-core-processor-512gb?part=MVVJ2LL/A#
[cleanCoder]: https://amzn.to/3dsLuyj
[statista]: https://www.statista.com/statistics/967095/worldwide-it-industry-growth-rate-forecast-segment/

{:refdef: style="text-align: center;"}
![compass](/assets/posts/6_interviewing/cover.jpg)
Image by [Yanalya][referralAutor] from [Freepik][referralLink]
{: refdef}

With 2021 just around the corner you might get the "what else is out there" itch related to job hunt. After all we're always taking [January as starting point][resolutions] in many projects. There are many flavors of interviews, kind of interviewers and different on site tests/take away home projects... Hell, an entire industry has [risen from it][crackingTweet]. What I'm about to share is my personal experience in the iOS arena.

Let's layout the scenario first, stating the stages that usually involve the interviews I've been involved into:

## #1 Contact 

The first thing you must have is the contact with the company/client you want to work for/with. Here the process is a little bit different if you're applying as a full-time employee or a freelancer.

- If you're applying as a full-time employee you're must likely to contact or be contacted by someone in the company's recruiting team. Smaller firms -I'm talking startups here- will have someone with technical background conducting this which it is a double edge sword because this is your first filter, you can't bullshit your way around someone who knows the craft. On a personal note I highly recommended pursuing startups once you've gain some knowledge and experience. As mentioned above, startups have smaller teams and they are all expected to be A multitalented players with high adaptability among different (not necessarily) related tasks.

- If we're talking of a medium+ size company then your first contact will be the recruiting team they have dedicated to this task. Here you have to be patient since there's a high probability they don't have a technical background (nor they should). After all companies this size can afford to specialize their departments and being technology knowable isn't a mandatory requisite for recruiters. Let your [soft skills][softSkills] shine, in case you don't posses these then you're in a little bit of trouble because beyond lack of talent, being hard to communicate with or directly a non pleasant person to be around is a key factor in preventing new hires.

- On the other hand, as a freelancer chances are that you'd be talking directly with the client since day 1 (unless you're contacted via a specialized site such as [Toptal][toptal]). I won't be focusing on this path, not for the lack of experience since I was a freelancer myself for the better part of 4 yours, but because I think It deserves a post of its own (let me know via [Twitter][twitter_username] if you'd like me to write it)

## #2. Technical interview

This is where your first _sort_ of formal testing begins; in my experience some Sr developer(s) of the team or project you're being interviewed for will be conducting this instance. Sr doesn't necessarily mean they will be highly skilled (although likely) but that they are familiar with the ins and out of the project's daily operations. I strongly recommend you to fresh up your basic knowledge of [ARC][arc], [ViewControllers lifecycle][lifecycle], [reference vs copy type][valueType] and other basic topics.

The main goal of this stage is assess if, at first glance, you're a worthy candidate to pursue -technically speaking of course-. Personally I think this is the perfect place where things can go sideways. What do I mean by _sideways_? It's pretty frustrating (even enraging) to go over the entire process in order to receive a lousy offer at the end or to find out you're a mismatch for that job. It's better to fail early, that way you can move on and pursue a more suited role for you. By all means my friends: **Don't get discourage by rejection**. This is like dating, you gotta be patient and keep looking!

## #3. Next stage 

You might be asked to code a simple app in order to evaluate your skills. Here's where your true seniority will shine: 

- Do you rely only on storyboards to build your UIs and haven't heard anything of [design patterns][gamma] or don't really understand what a retain cycle is? (hint: check **ARC** above). That's fine, if you said you were just entering the iOS world and they agreed on continuing with you then seize the moment and do everything you can to polish your UI as much as possible. Be very grateful they're giving you the opportunity (and be paid for) to expand your knowledge and get out of the junior zone.
- You know the basics, have been doing this for a couple of years at least, don't write [every single line of code inside your ViewController][massiveVC] and code a bit of your UI on code and the rest of xibs? Cool, chances are you'd be ranked as a Ssr (Most devs are here). [Document well your development][document] and be prepared to defend your decisions should you be interrogated.
- Coding has been paying your bills +5 years, [write tests][tests] on daily basis and not only deliver quality-documented code in your current team but also are capable of teaching others and communicate well with non technical contributors inside your organizations, congrats Sr dev. Don't be so hard on yourself, trust me: the most difficult task will be to know when to stop and consider your little test project as completed. 

*Disclaimer*: I've worked with [colleagues][gonza] who've been coding for less time than the arbitrary timeframe I set above and have a very good grasp on testing and documenting code. On the other, I've also worked with "Srs" who've been doing this for 7 or 8 years and it'd seem they are just repeating their first year of experience over and over. That being said, overall years of experience coding will develop memory muscle which in turn will make you spot trends and even get to know by instinct some ["unsual" errors][xcodeError]. I know it's a far from ideal metric but unless you have proven experience (real apps on the app store) then you'll be under it.

## #4. Negotiation 

If you made it this far: congrats! They (your potential employer) really liked what you've shown so far and is willing to pay you in order to keep doing it 🥳

Now the tricky part: how does your remuneration package look like? I deliberately used the term *package* because this may vary depending on your current location but it's expectable to the very least getting the basics covered: a good health plan, nice office supplies -confortable chair/desk, etc- (you're going to be sitting in front of a computed most of the day so I consider this a **must**) and a good [enough working machine][mbp] to get you going. That being said, It doesn't matter how nice the view on the company's office is or how comfortable the desk you have if you're not satisfied at the end of the day with your net compensation. Be sure to conduct proper [research][research] regarding the expected salary someone with your set of skills and experience has. Don't be afraid to aim high and negotiate your terms upfront, whether they are to have more money left over at the end of the month or work less hours daily for the same amount offered. **Everything is negotiable.**  

## #5. Before you go

In case all the planets align and you're satisfied with the offer, keep in mind these things before leaving your current post:

- No matter how awful your current job is, it is your [ethical responsibility][cleanCoder] to let them know you'll be leaving. This might vary depending on your country but a couple of weeks of due notice will give them plenty of time to plan contingencies for your departure.
- Inform your fellow devs of any known issues or nasty side effects they might (and probably will) find in the code base that you're aware of. In case you're the only dev in the project then do your best to document things well: *what should the next person be aware of? where could he or she find the most relevant topics? are there some misleading names?* (in the later one it doesn't worth the effort to document that, just rename it properly)
- Don't be a dick: even though IT world is the fastest growing sector in the economy, it's an unbelievable small one so don't burn bridges on your way out. You might regret it down the road.

# Conclusion 

As I said earlier: [IT world is the fastest growing sector in the economy][statista] so don't be reluctant to taste the waters. You don't have to wait until you hate your current job or get bored by it in order to start looking, you'll be much more appreciated by leaving while you're still a driven contributor instead of they thinking "Thanks God we could got rid of him/her".

Part of what keeps IT a rich and highly evolving ecosystem is the knowledge transfer with human capital moving from place to place (or starting their own thing), stay current yourself and be ready to seize the opportunity when it comes.

> Luck is what happens when preparation meets opportunity - Seneca 
