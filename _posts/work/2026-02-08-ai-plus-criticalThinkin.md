---
layout: post
title:  "The easiest code I didn’t write"
categories: work
excerpt: If implementation is cheap now, where does real engineering actually happen?
tags: [coding, ai, engineering, work, ci]
---

[wellKnown]: https://developer.apple.com/documentation/xcode/supporting-associated-domains
[ghAction]: https://github.com/features/actions
<<<<<<< HEAD
[target]: https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#onpushpull_requestpull_request_targetpathspaths-ignore
=======
>>>>>>> 157b27400add17a9f69708b078b4b80c0060cd50
[Think]: {% post_url /work/2021-03-25-thinkingBeforeCoding %}
[testing]: {% post_url /swift/2020-11-02-testing3rdFwk %}
[swiftRN]: {% post_url /coding/2026-01-26-fromSwiftToReact %}
<!-- ------------ -->

{:refdef: style="text-align: center;"}
![dictionary](/assets/posts/19_criticalThinking-AI/cover.png)
Automating rules (image generated with AI)
{: refdef}

> Implementation is getting cheaper. Thinking is not.

- [\[target\]: https://docs.github.com/en/actions/reference/workflows-and-actions/workflow-syntax#onpushpull\_requestpull\_request\_targetpathspaths-ignore](#target-httpsdocsgithubcomenactionsreferenceworkflows-and-actionsworkflow-syntaxonpushpull_requestpull_request_targetpathspaths-ignore)
  - [A tiny mistake with a big blast radius](#a-tiny-mistake-with-a-big-blast-radius)
  - [Enter my one-hit song: unit tests 🕺🏽](#enter-my-one-hit-song-unit-tests-)
  - [Letting AI sweat the small stuff](#letting-ai-sweat-the-small-stuff)
  - [But Mauri, isn’t this just busywork?](#but-mauri-isnt-this-just-busywork)
  - [Wiring it into CI](#wiring-it-into-ci)
  - [AI changes the how, not the why](#ai-changes-the-how-not-the-why)
  - [The real skill shift](#the-real-skill-shift)
  - [Closing thoughts](#closing-thoughts)

## A tiny mistake with a big blast radius

Awhile ago I did something utterly boring at work: I added a new universal link to one of our well‑known configuration files. We do this every once in a while. No fireworks. No architectural diagrams. Just a new entry in a place that has seen dozens of them before.

Except this time I messed it up.

![trigger]({{ site.url }}/assets/posts/19_criticalThinking-AI/precursor.jpg)

The formatting was slightly off. Nothing dramatic at first glance. The kind of thing your brain happily autocorrects when you’ve been staring at YAML for too long. The scary part? By the time a teammate caught it, the change already had a couple of approvals (the minimum allowed by our internal policy to merge changes into the main branch). 

Had this landed in production, it would have broken the entire [.well-known endpoint crawled by Apple][wellKnown] for universal links. That familiar feeling kicked in: where you replay alternate timelines in your head where it all went to 💩 and then you had some VERY awkard explaining to do.

I’ve written before about how [fragile assumptions tend to hide in plain sight][think]. This was one of those moments, just wearing a YAML costume.

## Enter my one-hit song: unit tests 🕺🏽

This isn’t a story about blame or process failure. Code review worked. A human caught it. All good. But it did surface an uncomfortable question: What if the same mistake sneaks through next time?

The answer wasn’t “be more careful” (that never scales), but to remove this entire class of errors from the equation. So I did what any reasonable engineer would do: I added tests.

Not app tests. Not snapshot tests. Just a small, boring, very targeted set of unit tests validating the configuration itself. I’ve argued before that [tests are about behavior, not implementation details][testing]. This was the same idea, applied outside of application code.

## Letting AI sweat the small stuff

With Copilot’s help and a bit of creative thinking, I put together a small Python script that validates the formatting of the configmap entries where these well‑known paths live. The goal was intentionally boring:

1. Parse the YAML
2. Extract the values
3. Assert that Apple expects a JSON object
4. Assert that Android expects a JSON array

Nothing clever. No abstractions to blog about. Just encoded assumptions turned into executable rules.

{% highlight py %}
{% include posts/19_criticalThinking-AI/test_configmap.py %}
{% endhighlight %}

Did AI help write most of this? Absolutely.

Did AI decide what should be tested? Not even close.

## But Mauri, isn’t this just busywork?

The thing is, this isn’t about the script. It’s about shifting responsibility from human memory to executable rules. Humans forget, YAML doesn’t care and JSON parsers are ruthless.

Once this test exists, a whole category of mistakes simply cannot reach production anymore. Not because people are smarter, but because the system is less forgiving. That’s leverage.

## Wiring it into CI

A test that only runs on your machine is a suggestion. So I wired it into CI using a small [GitHub Actions][ghAction] workflow:

{% highlight yml %}
{% include posts/19_criticalThinking-AI/config-validator.yml %}
{% endhighlight %}

Even when AI helps write the code, humans still design the system.

## AI changes the how, not the why

AI made the implementation details almost irrelevant. Writing Python, remembering APIs, parsing YAML — those are mechanical steps now. 

What wasn’t automated:

- Identifying the risk
- Understanding the blast radius
- Deciding which invariants matter
- Choosing [where in the pipeline to enforce them][target]

That’s the work. It’s the same pattern I touched on in [my previous post][swiftRN]: tools change, mental models endure.

## The real skill shift

If you squint, this story isn’t about Python, GitHub Actions, or configmaps. It’s about a shift in what it means to be effective as an engineer. Implementation used to be the bottleneck. Now it’s intent.

AI is excellent at answering “how do I write this?” but it’s still terrible at answering “should this exist?” and that’s fine. Because the creative act in software has never been about syntax. It’s about deciding where to draw lines, what to protect, and which assumptions deserve to be locked in with tests.

## Closing thoughts

The real win wasn’t the script. It was turning a fragile assumption into a rule the system enforces for me. That’s the kind of help worth automating.