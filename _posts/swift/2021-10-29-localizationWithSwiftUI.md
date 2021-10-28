---
layout: post
title:  "Guarantee localization with SwitfUI"
categories: swift
excerpt: The new shiny framework from Apple is not very intuitive on the testing front, or is it? How can we make it so?
tags: [swift, swiftUI, testing, macOS, localization]
---

[referralAutor]: https://pixabay.com/users/myrfa-3126475/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1614223

[referralLink]: https://pixabay.com/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1614223

[testability]: {% post_url /swift/2020-11-02-testing3rdFwk %} 
[localizables]: {% post_url /swift/2020-09-03-Self-descriptive-localizable %} 
<!-- ------------ -->

{:refdef: style="text-align: center;"}
![compass](/assets/posts/15_swiftUITesting/cover.jpg)
Image by [Ag Ku][referralAutor] from [Pixabay][referralLink]
{: refdef}

Manualy testing our UI in search of localization bug is a ridiculous thing to do in 2021. So what is it then? Why do we keep coming back to the same topic?

- [Prerequisites](#prerequisites)
- [Case study](#case-study)
- [The problem](#the-problem)
- [Proper localization](#proper-localization)
- [Snapshot tests](#snapshot-tests)
- [Test plans](#test-plans)
- [Final thoughts](#final-thoughts)

## Prerequisites

The topic we're about to discuss asumes a few things from your part in order to get the most of it such as basic knowledge on the following:

- _SwiftUI_: it is the most recent UI framework from Apple. It allows us to build in a declarative fashion instead of good old imperative's UIKit way has all of us used to. This is the first time I'm talking about it in this blog but there are countless resources out there to learn from. I won't get into too many details.

- _Localization_: Making our app be readable in multiple laguages covered in a [previous post][localizable]. Apple provides some tools to do this without too much hustle.

- _Snapshot testing_: I talked in detail in a previous [medium post](https://medium.com/peya-tech/screenshots-para-tus-tests-85598e4c5c4e) (sorry but that one it's on Spanish only, let me know via Twitter if this is something you'd like me to go in detail). It's simply the practice of saving screenshots of our UI's different state in order to compare and be notified when something changes in it.

## Case study

Let's say we want to draw a simple list of steps for one hypotetical audio edition/publishing app. 

{% highlight swift %}
{% include posts/15_swiftUITesting/InstructionsView.swift %}
{% endhighlight %}

This bit of code is enough to render this screen below

{:refdef: style="text-align: center;"}
![rendered UI]({{ site.url }}/assets/posts/15_swiftUITesting/render.png)
{: refdef}

If you're an old timer like me you might be wondering about `UITableViewDataSource`/`UICollectionViewDataSource`, _AutoLayout_ or at least the `ViewController`. No need for any of that, SwiftUI takes care of that demanding from us only declaration of _what_ has to be rendered, not _how_. Amazing, right?

What about a preview of our UI in different devices in light and dark mode? SwiftUI also got us covered there 👇🏽

{% highlight swift %}
{% include posts/15_swiftUITesting/Preview.swift %}
{% endhighlight %}

As a side note, running the followig command on a terminal will print out all available simulators in our environment. 

{% highlight shell %}
$ xcrun simctl list devicetypes
{%- endhighlight -%} 

--- 
---

![iPhone 8]({{ site.url }}/assets/posts/15_swiftUITesting/8_light.png) | ![iPhone 11 Pro Max]({{ site.url }}/assets/posts/15_swiftUITesting/11_light.png) | ![iPhone 13 mini]({{ site.url }}/assets/posts/15_swiftUITesting/13_light.png) |


![iPhone 8]({{ site.url }}/assets/posts/15_swiftUITesting/8_dark.png) | ![iPhone 11 Pro Max]({{ site.url }}/assets/posts/15_swiftUITesting/11_dark.png) | ![iPhone 13 mini]({{ site.url }}/assets/posts/15_swiftUITesting/13_dark.png) |

All of the above was rendered alongside my code within Xcode as I was tweaking the code. A real game changer regarding time saving and productivity 🎉

## The problem

"I don't see the problem Mauri 🧐" you might be thinking. The above is all good and dandy for small/prototype/side projects. The real issue arises with scale: what about multiple languages? checking that no regressions are produce as the codebase grows? Testing on watchOS/OS X? We need to introduce automation in this!

## Proper localization

First of all, let's replace the hardcoded strings by keys from the language tables we're adding for both English and Spanish.

## Snapshot tests



## Test plans

This is only half of the solution in our scenario. Snapshots until this point are going to test in a single environment configuration. Let's setup a test plan to cover all the languages we support.
