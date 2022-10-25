---
layout: post
title:  "Tracking down effectiveness regarding the sharing feature on Swift"
categories: swift
excerpt: How can we be certain that people are sharing our apps?
tags: [swift, uikit, marketing, engineering, productivity, success, framework]
---

[referralAutor]: https://www.pexels.com/@olly/
[referralLink]: https://www.pexels.com/photo/cheerful-young-woman-screaming-into-megaphone-3761509/
[MyStickers]: https://apps.apple.com/uy/app/mystickers/id884352968

[server]: {% post_url /swift/2021-03-06-serverSideVapor %} 

<!-- ------------ -->

{:refdef: style="text-align: center;"}
![dictionary](/assets/posts/16_sharingInSwift/cover.jpg)
Image by [Andrea Piacquadio][referralAutor] from [Pexels][referralLink]
{: refdef}

> If you can’t measure it, you can’t improve it – unknown

We cannot have a great product without some network component in it. When we talk about _network_, we’re not only referring to [fetching data in a server][server] and pushing updates into it. We’re referring to word of mouth, sharing some cool feature/milestone with your close ones and even posting it on social media.

How do we embed this behavior within our iOS apps? Let's see what we have for the menu this time:

- [First part of the equation](#first-part-of-the-equation)
- [Enter tracking to the picture](#enter-tracking-to-the-picture)
- [Is it actually working?](#is-it-actually-working)
- [Final thoughts](#final-thoughts)

## First part of the equation

UIKit provide us with the `UIActivityViewController` class to achieve precisely this.

{% highlight swift %}
{% include posts/16_sharingSwift/SocialMediaViewController.swift %}
{% endhighlight %}

The above snippet is extracted from the sharing QR funnel in [MyStickers][MyStickers]. Now it is as simple as instantiating a `SocialMediaViewController` and presenting it.

## Enter tracking to the picture

As solo developers in a bootstrap project, we often need to make choices related to focus. The beautiful thing about coding (for those of us who love it) is that it’s an endless endeavor. However, at the end of the day all that code matters only _if_ it’s actually being used. How do we know our sharing popup is actually being shown?

We need to track it down. Let’s suppose we’re using the [TrackingEngine](https://github.com/GeekingwithMauri/TrackingEngine) package to achieve this. We could log an event in our Coordinator whenever the `SocialMediaViewController` is presented like so 👇🏽

{% highlight swift %}
{% include posts/16_sharingSwift/LaunchSnippet.swift %}
{% endhighlight %}

Now we can track whenever our users use _started_ the sharing feature…

## Is it actually working?
> Garbage in, garbage out 

But wait, this only tracks when the users _initiated_ the sharing funnel. It doesn’t actually track when they fulfill it. Our statistics and measures are only as sound as the input we feed them with. Let’s be more precise.

The `UIActivityViewController` has an optional typealias called [`completionWithItemsHandler`]([https://developer.apple.com/documentation/uikit/uiactivityviewcontroller/completionwithitemshandler]) which is a closure that gets executed whenever the activity itself was fulfilled (or **dismissed**). Said closure expects 4 parameters:

- activityType (`UIActivity.ActivityType?`): it refers to the type of service selected by the user. This could be useful to track down which platforms are converting more and put more efforts into customizing said flows.
- completed (`Bool`): The only moment when this is `true` is when the user actually completed the sharing itself. 
- returnedItems (`Any?`): For custom activities that involve modifying data by its extensions, this value is useful. It returns any changes made to the original data. 
- activityError (`Error?`): if something went wrong, this value will tell us what was it. In case the activity completed smoothly, it’ll be `nil`

With all this context we can now track more confidently our flow

{% highlight swift %}
{% include posts/16_sharingSwift/FullSnippet.swift %}
{% endhighlight %}

## Final thoughts
There are countless reasons why our users might not go all the way through the sharing funnels. Just to mention a few of then: 

- An incoming call and later forgetting to return to the app
- The app crashing whenever the sharing started feature gets started
- The method they chose isn’t is fully supported by our apps yet 

Only by careful tracking each steps of their journey can we hone in the data and tweak our assumptions to match their reality, thus crafting an optimal UX for them. 
