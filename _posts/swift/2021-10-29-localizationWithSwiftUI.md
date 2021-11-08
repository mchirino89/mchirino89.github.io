---
layout: post
title:  "Guarantee localization with SwitfUI"
categories: swift
excerpt: The new shiny framework from Apple is not very intuitive on the testing front, or is it? How can we make it so?
tags: [swift, swiftUI, testing, macOS, localization]
---

[referralAutor]: https://www.pexels.com/@karolina-grabowska?utm_content=attributionCopyText&utm_medium=referral&utm_source=pexels

[referralLink]: https://www.pexels.com/photo/person-wearing-silver-ring-holding-white-book-page-5238117/?utm_content=attributionCopyText&utm_medium=referral&utm_source=pexels

[testability]: {% post_url /swift/2020-11-02-testing3rdFwk %} 
[localizables]: {% post_url /swift/2020-09-03-Self-descriptive-localizable %} 
[refactor]: {% post_url /work/2021-09-12-refactoring %} 

<!-- ------------ -->

{:refdef: style="text-align: center;"}
![dictionary](/assets/posts/15_swiftUITesting/cover.jpg)
Image by [Karolina Grabowska][referralAutor] from [Pixabay][referralLink]
{: refdef}

Manualy testing our UI in search of localization bugs is a ridiculous thing to do in 2021. So what is it then? Why do we keep coming back to the same topic?

- [Prerequisites](#prerequisites)
- [Case study](#case-study)
- [The problem](#the-problem)
- [Snapshot tests](#snapshot-tests)
- [Proper localization](#proper-localization)
- [Test plans](#test-plans)
- [Final thoughts](#final-thoughts)

## Prerequisites

The topic we're about to discuss asumes a few things from your part in order to get the most of it such as basic knowledge of:

- _SwiftUI_: it is the most recent UI framework from Apple. It allows us to build in a declarative fashion instead of good old imperative's UIKit way has all of us used to. This is the first time I'm talking about it in this blog but there are countless resources out there to learn from. I won't get into too many details.

- _Localization_: Making our app be readable in multiple laguages was covered in a [previous post][localizable]. Apple provides some tools to do this without too much hustle so again: details will be scarce.

- _Snapshot testing_: I talked in detail in a previous [medium post](https://medium.com/peya-tech/screenshots-para-tus-tests-85598e4c5c4e) (sorry but that one it's on Spanish only, let me know via Twitter if this is something you'd like me to go in detail). It's simply the practice of saving screenshots of our UI's different state in order to later compare them and be notified when something changes.

## Case study

Let's say we want to draw a simple list of steps for one hypotetical audio edition/publishing app. 

{% highlight swift %}
{% include posts/15_swiftUITesting/InstructionsView.swift %}
{% endhighlight %}

This bit of code is enough to render this screen below

{:refdef: style="text-align: center;"}
![rendered UI]({{ site.url }}/assets/posts/15_swiftUITesting/render.png)
{: refdef}

If you're an old timer like me you might be wondering about `UITableViewDataSource`/`UICollectionViewDataSource`, _AutoLayout_ or at least the `ViewController`. SwiftUI takes care of that, demanding from us only declaration of _what_ has to be rendered, not _how_. Amazing, right?

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

"I don't see the problem Mauri 🧐" you might be thinking. The above is all fine and dandy for small/prototype/side projects. The real issue arises with scale: what about multiple languages? Orientations (landscape/portrait)? Light and dark mode? Checking that no regressions are produce as the codebase grows? We need to introduce some automation in here!

## Snapshot tests
This is where snapshot tests come in handy. In a nutshell: they take a screenshot of the device with the setup we provide and store it for later comparisson. As soon as something in the UI changes without us intending to do so, said test would inmediately fail (also providing a new screenshot for us to check what changed).

Let's say we want to test in 3 different types of devices (an iPhone 8, 8+ and 12 Pro Max) for both light and dark mode, as well as landscape and protrait orientations. 

{% highlight swift %}
{% include posts/15_swiftUITesting/SnapshotTest.swift %}
{% endhighlight %}

The first time these tests are run, they failed because there's no a single anchor image to make comparissons with. In this instance, the snapshots will be created and afterwards will fail only when something from the UI changes. The resulting anchors will sit next to the tests files inside our project

![anchor images]({{ site.url }}/assets/posts/15_swiftUITesting/anchors.png)

## Proper localization
What if we need supporting another language? Let's say Spanish to make things easy for the writer 😁🇻🇪

First of all, let's replace the hardcoded strings by keys from the language tables we're adding for both English and Spanish, and access them using the same technique discussed in the [localization post][localizables]

{% highlight swift %}
{% include posts/15_swiftUITesting/Translator.swift %}
{% endhighlight %}

Let's see how it looks setting a device in Spanish:

| ![Device in English]({{ site.url }}/assets/posts/15_swiftUITesting/englishOnDevice.png) | ![Device in Spansih]({{ site.url }}/assets/posts/15_swiftUITesting/spanishOnDevice.png) |

Thanks to the test we added in the previous part, we are confident this change isn't causing any regression. This is what a I call [a proper refactor][refactor]! 👏🏽

## Test plans

This is only half of the solution in our scenario. Snapshots until this point are going to test in a single environment configuration. Having to manually setup a device or simulator in a specific context and then running a set of specifics test for it defeats the purpose of automation.

Enter _test plans_ into the picture: they were introduced in WWDC 2019 with Xcode 11 as a way to organize our test environment. Let's setup a test suite to cover both languages. 

- We go to Product -> Scheme -> Edit scheme in order to convert our test suite in a test plan

![test plan in the making]({{ site.url }}/assets/posts/15_swiftUITesting/testPlan/1.jpg)

- Create a test plan from current scheme

{:refdef: style="text-align: center;"}
![test plan setup]({{ site.url }}/assets/posts/15_swiftUITesting/testPlan/2.jpg)
{: refdef}

- Select the desired location

{:refdef: style="text-align: center;"}
![test plan location]({{ site.url }}/assets/posts/15_swiftUITesting/testPlan/3.jpg)
{: refdef}

- After that, we can close the scheme window and the test plan setup window should be open. In it we're going to setup our desired context

| ![Test plan in English]({{ site.url }}/assets/posts/15_swiftUITesting/testPlan/4.1.jpg) | ![Test plan in Spansih]({{ site.url }}/assets/posts/15_swiftUITesting/testPlan/4.2.jpg) |

- Now all that's left missing is adding our snapshot tests for Spanish. We'll also tweak them so they don't get executed when the device is English.

{% highlight swift %}
{% include posts/15_swiftUITesting/SpanishSnapshot.swift %}
{% endhighlight %}

💡 Very important: use `XCTSkipIf` for the English tests so they get skipped when running Spanish environment.

After running the test suite again (⌘ + U), it'll get execute twice in order to check both languages 👏🏽

![test plan location]({{ site.url }}/assets/posts/15_swiftUITesting/testPlan/5.jpg)

We're left with all the anchor images permutations stored for later comparissons.

![test plan location]({{ site.url }}/assets/posts/15_swiftUITesting/testPlan/6.jpg)

## Final thoughts
There's a place in the testing pyramid for manual verification but it's reserved for hard to replicate edge cases. For more mundane layout and general UI validations, Snapshots are usually good enough.

Nevertheless it's worth mentioning the toll they incur in performance. Unit tests are blazzing fast (usually under 1ms each one). Snapshots are on average 100 times slower, therefore we should be careful not to relay so heavily on them. 

As always, there's no silver bullets regarding software development. There will be times when it makes sense to pay for the performance penalty in order to cover a legacy screen, just to mention a common scenario. Each context is different so let's not paint ourselves into a corner only for following "best practices". Happy testing 👨🏽‍💻👋🏼











