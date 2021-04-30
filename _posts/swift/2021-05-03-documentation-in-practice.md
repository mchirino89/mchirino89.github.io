---
layout: post
title:  "Documentation in practice for Swift"
categories: swift
excerpt: How do we write useful documentation that's available beyond the IDE?
tags: [swift, documentation, CI, work, tech]
---

[referralAutor]: https://pixabay.com/users/myrfa-3126475/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1614223
[referralLink]: https://pixabay.com/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1614223
[utils]: https://github.com/mchirino89/MauriUtils

<!-- ------------ -->

{:refdef: style="text-align: center;"}
![compass](/assets/posts/11_documentation/cover.jpg)
Image by [Ag Ku][referralAutor] from [Pixabay][referralLink]
{: refdef}

> “Without Knowledge, action is useless and knowledge without action is futile.” ― Abu Bakr

If you ended up here, chances are you know you should document your code and currently aren't doing it. Well, let me tell you it's not enough to document it, this information **MUST** be easily accesible by anyone who wants to use it. But on the bright side, the fact that you're here instead of procrastinating in Twitter or elsewhere shows progress on your behalf. Good for you 👏🏽

On the other hand, if you're still uncertain about documenting regularly (you might even think you write code so well it documents itself), then please bare with me while I make my case. This post will be break down into sections so feel free to skip ahead into a specific one for your needs

- [Why documenting matters](#why-documenting-matters)
- [How to do it effectively](#how-to-do-it-effectively)
- [Using jazzy for the job](#using-jazzy-for-the-job)
- [Use case in practice](#use-case-in-practice)

With no further do, let's dive in!

# Why documenting matters
If nothing else, do it as a favor to your future self

# How to do it effectively

- It must answer what a piece of code does, not necessary how (at least not in depth): What do I mean by this? If I'm going to use a `sorting` method I might not need to know (or even care for that matter) what type of algorithm is used for that task.
- Document only what's going to be used by the outside world: it's a myth that every single line of code should be documented. There are better uses for your time so invest it where it counts.

# Using jazzy for the job

Installation and setup for jazzy

# Use case in practice

I followed the steps above in order to generate the documentation you see in one of tools called [MauriUtils](utils)