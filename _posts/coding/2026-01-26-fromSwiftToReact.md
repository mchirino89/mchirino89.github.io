---
layout: post
title:  "From Swift to React Native"
categories: coding
excerpt: Stepping into the dark side or finally peaking outside the Matrix?
tags: [coding, swift, engineering, work]
---

[instruments]: https://developer.apple.com/tutorials/instruments
[swift]: {% post_url /swift/2021-11-08-localizationWithSwiftUI %} 
[swift_safety]: {% post_url /swift/2020-07-24-self-documented-code-with-flexible-swift-enums %} 
[localizables]: {% post_url /swift/2020-09-03-Self-descriptive-localizable %} 

<!-- ------------ -->

{:refdef: style="text-align: center;"}
![dictionary](/assets/posts/18_swift2react/cover.png)
The transition (image generated with AI)
{: refdef}

> There’s pride in mastery. But pride can also be a shackle.

- [Getting over the dogma](#getting-over-the-dogma)
- [JavaScript: the Frenemy](#javascript-the-frenemy)
- [The ecosystem is not a swamp](#the-ecosystem-is-not-a-swamp)
- [Debugging is weird (at first)](#debugging-is-weird-at-first)
- [Thinking in Components](#thinking-in-components)
- [Navigation isn’t trivial](#navigation-isnt-trivial)
- [Platform parity woes](#platform-parity-woes)
- [Tooling is a mixed bag](#tooling-is-a-mixed-bag)
- [The People factor](#the-people-factor)
- [Well oiled AI](#well-oiled-ai)
- [But Mauri, what about performance?](#but-mauri-what-about-performance)
- [Side-by-side: Swift vs TypeScript](#side-by-side-swift-vs-typescript)
- [Should you make the leap?](#should-you-make-the-leap)

After a decade in iOS development, React Native feels like opening a door to a room you’ve always known existed but never stepped into. You’ve walked past it a thousand times, maybe peeked through the keyhole now and then. 

But when there's such a radical shift in the industry and you’re forced in, you finally realize: it’s both familiar and bizarre.

## Getting over the dogma

The first challenge isn’t technical. It’s emotional. I’ve spent the last ten years crafting UIKit views, poking at Auto Layout constraints until they behaved, wrestling storyboards, and more recently, embracing [SwiftUI’s declarative style][swift]. There’s pride in that mastery. But pride can also be a shackle.

React Native forces you to let go of some of that. Not all of it —many principles carry over— but enough that you start questioning your instincts. Your intuition whispers, "Subclass that!" or "Use a delegate!" And React Native chuckles and replies, "How about a hook instead?"

## JavaScript: the Frenemy

Let’s talk about JavaScript. The language itself is quirky, and it’s easy to dismiss when you come from [Swift’s type-safe paradise][swift_safety]. But if you squint past the oddities, modern JavaScript (or really, TypeScript, which you’ll quickly adopt) is not the villain we make it out to be. It’s like that colleague who’s a bit chaotic but gets stuff done.

I still miss Swift’s exhaustiveness [checks and protocol extensions][localizables]. But TypeScript gives me just enough guardrails to not fall off the bike. And the sheer flexibility of the language lets you move fast, prototype quicker, and rework things without waiting for a CI build to finish chewing on Xcode’s latest tantrum.

## The ecosystem is not a swamp

There’s a popular meme in native circles that the JavaScript ecosystem is a fragile tower of dependencies waiting to collapse. And while there *is* truth to that (I see you, npm audit), it’s also unfair.

React Native has matured. Metro is reasonably fast, and the community around core libraries (React Navigation, Reanimated, etc.) is strong. You’ll still hit some friction points, but the pace of improvement is high. Bugs get fixed. APIs evolve. People care.

## Debugging is weird (at first)

[Instruments][instruments] has no real equivalent. Debugging styles and layout bugs is not as clean as flipping on Xcode’s view debugger. But there’s Flipper. There’s React DevTools. You learn to console.log more than you’d like to admit. And honestly? Sometimes it’s faster.

Hot reloading changes everything. Waiting for a SwiftUI preview to kick in or running on-device after every minor tweak starts to feel ancient by comparison. This tight loop makes experimentation delightful.

## Thinking in Components

This was the biggest mental shift.

React Native pushes you to think in components from day one. You stop seeing screens and start seeing pieces: buttons, headers, cards, sections. You pass props, manage local state, and build composable, declarative UIs.

And it’s liberating.

You begin asking, "What does this component *need* to know?" rather than stuffing things into a giant view controller or a bloated SwiftUI `View`. It’s like going from oil painting to Lego blocks. Less expressive in some ways, more structured in others.

## Navigation isn’t trivial

Remember how intuitive `UINavigationController` felt when you first picked it up? React Navigation isn’t that. It works, but it requires setup, boilerplate, and reading more docs than you’d prefer.

But once you get past the initial friction, you realize it’s incredibly flexible. Stacks, tabs, modals —all configurable and nestable– in ways UIKit would protest. SwiftUI’s NavigationStack also tried to simplify things, but with each iOS release comes new breaking changes that make you wonder if anything will stabilize.

## Platform parity woes

You will hit those moments: a gesture behaves differently on Android. A font renders awkwardly. A third-party lib works great on iOS but breaks on Pixel 4.

This is the price you pay for code sharing. It’s a tax. Sometimes it’s minor. Sometimes it’s a migraine. You get better at identifying what should be shared and what needs to fork. And your empathy for Android devs grows exponentially.

## Tooling is a mixed bag

Xcode is still in the loop. Android Studio joins the party. And you’ll spend time in terminal windows running metro, resetting caches, and debugging weird node issues. It’s part of the territory.

But getting hot reload in both platforms at once next to Cursor feels like a superpower. The trade off worths it

## The People factor

React Native has a vibrant community. Blog posts, YouTube tutorials, Discord servers, open-source libraries—it’s all out there. People are building real apps, solving real problems, and sharing generously.

You feel it.

Coming from iOS, where most devs operate in silos or behind NDAs, this openness is refreshing. It reminds you that tech is a shared craft, not just a job.

## Well oiled AI

Following up in the people factor, there's also AI in the loop. Such a mature and open ecosystem means LLMs got better training, thus better results when getting a hand from Claude/ChatGPT/your-AI-of-preference.

## But Mauri, what about performance?

Ah, the classic concern.

React Native isn’t native-native. But 99% of the time, that doesn’t matter. Unless you’re building a real-time 3D renderer or pushing thousands of concurrent animations, React Native’s performance is perfectly adequate.

And when you do need to go lower level? You can. Use the native modules bridge. Write a Swift or Kotlin module. Optimize the hot path. Just like you'd tune a performance-sensitive SwiftUI view with `drawingGroup` or `@ViewBuilder`.

## Side-by-side: Swift vs TypeScript

Let’s say we’re showing a simple user card:

**SwiftUI:**

```swift
struct UserCard: View {
    let name: String
    let age: Int

    var body: some View {
        VStack(alignment: .leading) {
            Text(name).font(.headline)
            Text("Age: \(age)").font(.subheadline)
        }
        .padding()
        .background(Color.gray.opacity(0.2))
        .cornerRadius(8)
    }
}
```

**React Native (TypeScript):**

```tsx
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

type Props = {
  name: string;
  age: number;
};

const UserCard: React.FC<Props> = ({ name, age }) => (
  <View style={styles.card}>
    <Text style={styles.name}>{name}</Text>
    <Text style={styles.age}>Age: {age}</Text>
  </View>
);

const styles = StyleSheet.create({
  card: {
    padding: 16,
    backgroundColor: '#eee',
    borderRadius: 8,
  },
  name: {
    fontSize: 18,
    fontWeight: 'bold',
  },
  age: {
    fontSize: 14,
    color: '#555',
  },
});
```

The idea is the same. The syntax is different. Both are readable. Both are powerful.

## Should you make the leap?

If you’re ten years into iOS and feeling curious, the leap to React Native isn’t as scary as it seems. You won’t lose your skills—they’ll just evolve. Your SwiftUI and UIKit experience still helps you understand mobile constraints, UI expectations, app structure. But now, you get to see those same challenges from a different angle.

It’s humbling. It’s fun. It’s weird.

And sometimes, that’s exactly what your career needs.

