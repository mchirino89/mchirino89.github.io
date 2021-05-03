---
layout: post
title:  "Documentation in practice for Swift"
categories: swift
excerpt: How do we write useful documentation that's available beyond the IDE?
tags: [swift, documentation, CI, work, tech]
---

[referralAutor]: https://pixabay.com/users/myrfa-3126475/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1614223

[referralLink]: https://pixabay.com/?utm_source=link-attribution&utm_medium=referral&utm_campaign=image&utm_content=1614223

[jazzy]: https://github.com/realm/jazzy
[net]: https://github.com/mchirino89/MauriNet
[brew]: https://brew.sh
[rbenv]: https://github.com/rbenv/rbenv
[rubyDebate]: https://metova.com/choosing-a-ruby-version-management-tool-rbenv-vs-rvm/
[rvm]: https://rvm.io
[security]: https://rvm.io/rvm/security
[zsh]: https://ohmyz.sh
[bundler]: https://bundler.io
[rbenvHack]: https://github.com/rbenv/rbenv/issues/879#issuecomment-359284790
[ari]: https://www.linkedin.com/in/ariel-demarco-a4b34aa0/
[gemfile]: https://bundler.io/v2.2/gemfile.html#gemfiles

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
	- 	[Prerequisites](#prerequisites)
	-  [Setup](#setup)
- [Use case in practice](#use-case-in-practice)

With no further do, let's dive in!

## Why documenting matters
If nothing else, do it as a favor to your future self

## How to do it effectively

- It must answer what a piece of code does, not necessary how (at least not in depth): What do I mean by this? If I'm going to use a `sorting` method I might not need to know (or even care for that matter) what type of algorithm is used for that task.
- Document only what's going to be used by the outside world: it's a myth that every single line of code should be documented. There are better uses for your time so invest it where it counts.

## Using jazzy for the job

We established above documentation must be foundable beyond your IDE, in other words anyone in need for any of your APIs shouldn't have to go through the source code of them necessarily in order to consume them properly. So how do we achieve this? One way is using a great tool built specifically for this task: [Jazzy][jazzy].

### Prerequisites

The following is a list of optional (but highly recommendable) things you should have installed in your system before proceeding

- [Brew][brew]: this is a great package manager for macOS. It will ease many of the installations you'll have to deal with in your environment setup, not only for jazzy and its requirements, but in general.

{% highlight shell %}
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
{%- endhighlight -%} 

- [rbenv][rbenv] or [RVM][rvm]: As a prerequisite for installing this gem (Jazzy), I recommend installing a *Ruby version manager* first. This is so you don't run into common permission conflicts that otherwise arise when using OS X vanilla ruby version directly from the terminal (it usually starts failing due to lack of permissions and all sort of stuff).

After doing some [digging][rubyDebate] into which version manager to use, I decided to pick the first one essentially because I found it to be less invasive (RVM overrides shell commands and I have trust issues with that sort of politics).

{% highlight shell %}
$ brew install rbenv
{%- endhighlight -%}

We then setup `rbenv` in our terminal by simply typing 
{% highlight shell %}
$ rbenv init
{%- endhighlight -%}

As a side note, the terminal your using will print a recommendation command for you to add into your profile in order to execute the step above automatically from now on. In my case I use [Oh My Zsh][zsh] so I added the line below at the bottom of my .zsh
``` 
eval "$(rbenv init -)"
```

Check everything is working properly by running rbenv-doctor script like so
{% highlight shell %}
$ curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
{%- endhighlight -%}

You should see everything working properly and telling you that there's no ruby version installed yet in rbenv path. At the time of this writing, the latest stable version was 3.0.1 so that's the one we'll install. 
{% highlight shell %}
rbenv install 3.0.1
{%- endhighlight -%}

- [Bundler][bundler]: I knew bundler through a colleague of [mine at work][ari]. All it does is centralizing all your Ruby gems and their respective versions for your project.

{% highlight shell %}
$ gem install bundler
{%- endhighlight -%}

In case your terminal rejects the above command due to a lack of writing permissions, check your Gems environment by executing
{% highlight shell %}
$ gem env home
{%- endhighlight -%}

If above output is pointing to your system default Ruby version, it shouldn't. That's the entire reason we took all the trouble in setting up **rbenv** in the first place, but things sometimes go wrong. What [solves][rbenvHack] it for me was rehashing.

{% highlight shell %}
$ gem env home
# => ~[your_username]/.rbenv/versions/<ruby-version>/lib/ruby/gems/...
{%- endhighlight -%}

Now we define our [Gemfile][gemfile] with our desired gems in it.

### Setup
Setting up Jazzy is dirt simple: 
{% highlight shell %}
$ gem install jazzy
{%- endhighlight -%}

> In case you want to avoid messing directly with *sudo* permissions in order to modify your system files –which I recommend against if you're not COMPLETELY sure what you're doing–, I'd suggest following the above steps detailed in the [prerequisites](#prerequisites) section.



## Use case in practice

I followed the steps above in order to generate the documentation you see in  [MauriNet][net]. This is a Networking wrapper I built around Swift's native URLSession so it wouldn't be necessary to add third party dependencies for simple `GET`/`POST` requests and skipping the boilerplate ceremony each time I'd have to use it.

Please go ahead and check it out. Feedback is not only welcome but encouraged, I'll be delighted to receive pull requests in this and any of my other repos.