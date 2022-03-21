---
layout: post
title:  "A leap of faith? Incursion into mobile development"
excerpt: Feeling tempted by mobile development but not sure if you're prepared, let alone whether it IS the right fit for you? 
categories: work
tags: [coding, mobile, tech]
---

[referralAutor]: https://pixabay.com/users/firmbee-663163/

[referralLink]: https://pixabay.com/es/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=5423683

[peyaJob]: https://stackoverflow.com/jobs/484650/software-engineer-ios-pedidosya

[education]: {% post_url /swift/2020-11-02-testing3rdFwk %} 

[hybrid]: https://shopify.engineering/react-native-future-mobile-shopify
[native]: https://dropbox.tech/mobile/the-not-so-hidden-cost-of-sharing-code-between-ios-and-android
[betteriPhone]: https://www.androidauthority.com/ios-vs-android-1068950/
[betterAndroid]: https://www.zdnet.com/article/11-things-my-android-phone-does-way-better-than-your-iphone/
[cordova]: https://cordova.apache.org
[ionic]: https://ionicframework.com
[angular]: https://angular.io
[udacity]: https://confirm.udacity.com/D5HRFVUJ
[mbp]: https://articulo.mercadolibre.com.uy/MLU-476806895-macbook-pro-retina-mid-2014-ssd-256-8gb-ram-400-ciclos-_JM
[salary]: https://www.glassdoor.com/Salaries/it-salary-SRCH_KO0,2.htm
[debt]: https://www.thebalance.com/five-spending-habits-that-lead-to-debt-960042
[inapp]: https://sensortower.com/blog/app-revenue-and-downloads-2020
[macmini]: https://amzn.to/3ufyJgb
[license]: https://developer.apple.com/programs/
[mystickers]: https://apps.apple.com/uy/app/mystickers/id884352968?l=es
[ego]: https://amzn.to/3blgrl1

{:refdef: style="text-align: center;"}
![compass](/assets/posts/7_mobileDevelopment/cover.jpg)
Image by [Firmbee][referralAutor] from [Pixabay][referralLink]
{: refdef}

Mobile development is somewhat of a controversial topic: never ending debates about [hybrid][hybrid] vs [native][native] development and which platform will rule over another ([iOS][betteriPhone] vs [Android][betterAndroid]) just to mention a few of the most popular. If you're like me -a platform specialist- your side is kind of picked for you already (it doesn't matter if you strongly support it or not); on the other hand in case you're a developer from elsewhere in the development stack or just a newbie who wants to dive into this you might have a few (common/misleading?) doubts related to the entire field. Let's debunk some of them, shall we?

## You must pick carefully where to start since you'll be stuck for years in it

*Reply: completely false.*

I have yet to find a single mobile developer who has painted him or herself into a corner due to a lack of opportunity in changing technology just for the fact that he/she started in a particular one. 

Take my own case for example: I started out in hybrid development with an android device back in 2013 when [Apache Cordova][cordova] was relatively new and everyone thought that the answer to develop cheap and fast for all platforms was a good idea (there were other players at this time besides Apple and Google in the mobile mainstream) -spoiler alert: fast *and* cheap rarely, **if ever**, correlates to quality-. By the end of that year I started my internship in native iOS so I jumped into Objective-C right until mid 2014 when I became a freelancer and had to return to hybrid development (this time with [ionic][ionic] framework when it was driven by [angular][angular]). 

This lasted until 2016 when I was able to save enough to purchase my macbook pro and make myself up to speed with Swift thanks to [Udacity's][udacity] guidance. I have been on iOS development ever since but that has been due to my own choice, not lack thereof. 

So the TL;DR is No. As long as you find yourself in a [great place to work][peyaJob] and be willing to learn, you can go back-and-forth between mobile technologies.

## You need to have backend experience to succeed in mobile development

*Reply: advisable at best but no at all mandatory*

While it's completely true that having an holistic knowledge related to the entire system you're working in is an advantage, the truth is that you can't accomplish great, sustainable things all alone. You need to communicate with your teammates and by experience I can tell you backend folks know how to communicate well with others so don't sweet it in case you never wrote a single line for the server side.

The last time I wrote code for backend was in 2014 during my internship. While there have been times where I've found myself somehow in the dark with internal operations of the API I have to communicate with, the truth is I don't really *have* to know it. An overview of said operations and common sense, alongside the good communication with the backend team discussed above will take you a long way.

## You need years of frontend experience before making the jump

*Reply: while common, not true.*

It's not even a matter of advisable or not, depending of the architectural layout your app have it might not even be mappable to whatever a frontend developer usually does. Yes, you can greatly benefit from deep link handling and the isolated views approach the web handles but again, this rarely is a 1:1 mappable relationship  against the codebase's mobile architecture you'll have to deal with.

## You need a state of the art equipment to code for mobile

*Reply: not really although desirable*

Above I mentioned I was away from native development until the point my savings could afford the investment in my [Macbook Pro][mbp], I could also have easily settle for a Mac Mini that was much more affordable to begin with. Why didn't I? Back then I used to live in a country with a hard exchange control over foreign currency and I figured it'd be hard for me to periodically upgrade my equipment, therefore my reasoning was holding up a little bit more for a professional laptop so I could have peace of mine for a few years.

Your situation could very well be different and your context (income, personal/familiar situation and location-related expenses among other factors) unique. If you want to take the leap and feel your current development equipment isn't up for the task, take several things into account:

- If you're already in the IT industry, there are high probabilities you're earning more than minimum wage (otherwise you're seriously [underpaid][salary], for real!) so buckle up and focus on the goal 💻. It probably won't take you as much time to get there as me.
- We spend [so much of our income][debt] on unsatisfying, short-term "happiness" stuff that's almost unreal when we actually figure out where our money is going. In case you aren't keen with budgets, start simple: cut on easy to avoid expenditure first such as casual food treat you take everyday -yeah, I'm talking about that $5 coffee from the famous coffee chain with the siren- and holding on for awhile on [mobile gaming expenses][inapp] are good examples for starters.
- For a quick bootstrap, you might sacrifice mobility over price and start grounded with a [Mac Mini][macmini]. That's what I used during my internship and besides the occasional hiccup, it worked just fine. This will dependen on your patience level.

My two cents on the topic above is to keep your eyes on the price and eventually you'll be able to upgrade to a newer machine that will be paid by earnings produced on the previous one.

## You have to pay developer's ~~taxes~~ license

*Reply: only for real device deploys and eventual distribution on personal projects*

Here's a shocker for some senior developers out there: I have paid the [apple's developer license][license] only for half the time I've been working for iOS and this was only after I launched a [side project of my own][mystickers] in order to get to know the entire _deploy, distribution and sells_ pipeline. 

Yes, it's a nice feeling to see your test apps run on real devices (I understand) but unless launching it to the app store is the goal, it's just a [matter of ego][ego] when you're on your iOS development infancy to pay those $100/yearly. They'll be much more useful toward hardware investment in the beginning (see point above if you just made it to this point via skimming to understand what I mean by that statement).

In consequence and just to make myself sure you understand the gist of this whole post: all you need is **will** to dive into mobile development and nowadays the entry barrier is lower than ever with an ever-growing community of developers that are sharing [educational content everywhere][education].