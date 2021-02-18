---
layout: post
title:  "Descriptive localizable using Swift's enums"
categories: swift
excerpt: Swift's Enums are quite powerful; in this post we’ll cover one use case I’m really fond of which are localizables 🇺🇸🇺🇾🇻🇪. 
---

[referralLink]: https://pixabay.com/es/?utm_source=link-attribution&amp;utm_medium=referral&amp;utm_campaign=image&amp;utm_content=1995786

[enumPost]: {% post_url /swift/2020-07-24-self-documented-code-with-flexible-swift-enums %}
[localizableTalk]: https://developer.apple.com/videos/play/wwdc2019/403/

[localizableDoc]: https://developer.apple.com/documentation/foundation/bundle/1417694-localizedstring
[propertyObservers]: https://docs.swift.org/swift-book/LanguageGuide/Properties.html
[DRY]: https://deviq.com/don-t-repeat-yourself/
[opinion]: https://www.theatlantic.com/technology/archive/2018/05/there-is-only-one-thing-imho-can-mean/559481/
[SRP]: https://www.instagram.com/p/CDhvr5_J1AJ/?utm_source=ig_web_button_share_sheet
[testPlans]: https://developer.apple.com/videos/play/wwdc2019/413/

{:refdef: style="text-align: center;"}
![compass](/assets/posts/3_localizable/welcomeLocalized.jpg)
Image from [Pixabay][referralLink]
{: refdef}

As stated [previously][enumPost] Swift's Enums are quite powerful; in this post we’ll cover one use case I’m really fond of: localizables 🇺🇸🇺🇾🇻🇪. 

## Current state of the union for localizables

[Apple][localizableTalk] has provided us with many tools to work with localization. However there are still many associated pitfalls for handling non static localizable (a.k.a: you can’t use Xcode's autocomplete in order to access your declared localizables) which is why it’s up to us as responsible developers don’t make a mess in the codebase while implementing multi-language support in our apps.

Let's see what I mean in a short example: the *safest* way to use localizables is via [`localizedString`][localizableDoc] API, which requires you to have a set of **Localizable.strings** files with the desired key/values for the supported languages. 

![]({{ site.url }}/assets/posts/3_localizable/englishLocalized.jpg)  |  ![]({{ site.url }}/assets/posts/3_localizable/spanishLocalized.jpg)
English strings | Spanish strings |

Afterwards you'd use any of said keys within code like so:

{% highlight swift %}
@IBOutlet weak var textLabel: UILabel! {
    didSet {
        textLabel.text = NSLocalizedString("example", comment: "initial text for example app")
    }
}
{% endhighlight %}

![]({{ site.url }}/assets/posts/3_localizable/englishSim.jpg)  |  ![]({{ site.url }}/assets/posts/3_localizable/spanishSim.jpg)
English caption | Spanish caption |

(*disclaimer*: you don't necessarily have to set your localizable UI text via [property observers][propertyObservers], I did this way in order to compact the code snippet as much as possible)

## Slippery rope

So, it seems pretty straight forward the localizable implementation. What's the problem? The usual suspects:

- Breaking of [SRP][SRP] principle (VC starts knowing too much about UI configuration)
- Manually typed strings is **always** an error prone move
- Unless you're working with a dedicated translator, the `comment` value might very well be omitted. [IMHO][opinion] a well defined variable is always better than a comment.

## Enter enums to the rescue

Let's clean things a little bit by introducing Enums to the mix. Let's start by defining en enum with our key:

{% highlight swift %}
enum Translation: String {
    case example
}
{% endhighlight %}

Ok, this solves the hardcoded string *issue*. Let's keep moving on add the localizable support. We could, for instance, add a computed property and inside of it request the localized value for the current case.

{% highlight swift %}
enum Translation: String {
    case example
    
    var key: String {
        NSLocalizedString(rawValue, comment: "")
    }
}
{% endhighlight %}

However this leaves us with a couple of choices: 

1. Forever build this single enum with **all** localizables values add to it as the project grows.
2. Include the same computed var snippet of code into each single Localizable enum in order to keep them separated by topic/view relationship.

The former breaks *SRP* and the later [DRY][DRY]. But, what if you could have our cake and eat it too? Enter option 3! 🥳🎂

## Enum + Protocols = dangerous couple ⚔️

Let's make a protocol that encapsulate the desired behavior 

{% highlight swift %}
/// Protocol intended to provide a key string localized for its respective value 
protocol Localizable {
    /// Returns localized value should it be found defined with this matching key 
    var key: String { get }
}
{% endhighlight %}

Now we can declare the desired behavior in the protocol's extension, saving us that way the trouble to ⌘ + C / ⌘ + V stated before. 

{% highlight swift %}
...
extension Localizable {
    var key: String {
        NSLocalizedString(rawValue, comment: "")
    }
}
{% endhighlight %}

Nevertheless the beauty of protocols might be dangerous if not properly constraint since anything can now conform to it. I heard once a college say: "when you're designing an API, you need to account for someone using it the worst way possible" and since *possible* is the key word here, let's constraint that protocol in order to make it impossible to be used by anything else besides what it was intended for:

{% highlight swift %}
...

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    var key: String {
        NSLocalizedString(rawValue, comment: "")
    }
}
{% endhighlight %}

Now only enums conforming to `String` protocol will be able to use it. Nice catch 🎣

All there is to do know is replaced the localized text in our ViewController for the enum abstraction like so:

{% highlight swift %}
enum Translation: String, Localizable {
    case example
}

...

@IBOutlet weak var textLabel: UILabel! {
    didSet {
        textLabel.text = Translation.example.key
    }
}
{% endhighlight %}

## Testing time! ❌ - ✅ - ♻️

You can test this manually going into the simulator configuration -> General -> Language & Region -> iPhone Language and selecting the proper one for each set of regression... Or you can let Xcode spares you the process 😄

Create a new scheme |
![]({{ site.url }}/assets/posts/3_localizable/addScheme.jpg) |
Set it up with the desired language for the tests (Spanish in our case 🇪🇸) |
![]({{ site.url }}/assets/posts/3_localizable/schemeSetup.jpg) |
You should be good to go when you see this (I tweaked scheme's names in order to avoid confusion) |
![]({{ site.url }}/assets/posts/3_localizable/schemeEndgame.jpg) |

Testing localization is straight forward thanks to the default behavior of `NSLocalizedString` API which states that in case the requested value doesn't exist inside the table of localized values declared (.strings file created at the beginning of the post) then the same key will be returned as a string. Let me show you what I mean with a failing test:

![]({{ site.url }}/assets/posts/3_localizable/failingTest.png) |
Failed for Spanish scheme since the default value isn't expected (remember we defined a value for said key earlier) |

Finally a single passing test for both scheme could be this one:

{% highlight swift %}
func testLocalizableDictionary() {
    XCTAssertNotEqual(Translation.example.rawValue, Translation.example.key)
}
{% endhighlight %}

Apple introduced [test plans][testPlans] in WWDC 19 which come really handy for our test schemes but that (alongside a more dynamically approach on testing multiple localized keys) is a topic for a later article. 
