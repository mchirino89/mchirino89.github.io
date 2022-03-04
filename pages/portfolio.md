---
layout: page
title: Portfolio
---
[MatchWordMarketing]: /assets/portfolio/MatchWord/matchword_maketing.jpg
[MatchWordLight]: /assets/portfolio/MatchWord/pathAnimatedLight.gif?style=centerme
[MatchWordDark]: /assets/portfolio/MatchWord/pathAnimatedDark.gif?style=centerme
[MyStickersLight]: /assets/portfolio/MyStickers/light.jpg
[MyStickersDark]: /assets/portfolio/MyStickers/dark.jpg
[iPad]: /assets/portfolio/MyStickers/iPad.jpg
[RickAndMortyImage]: /assets/portfolio/RickAndMorty/RickAndMorty.jpg
[blogImage]: /assets/portfolio/Blog/cover.png

[mw]: https://apps.apple.com/us/app/matchwords-build-words/id1612434602
[stickers]: https://apps.apple.com/us/app/mystickers/id884352968
[avengers]: https://collectibles.panini.co.uk/editorial/road-to-avengers-endgame-sticker-collection.html
[soccer]: http://collectibles.panini.uy/editorial/album-conmebol-copa-america-2021-preview.html
[wikis]: https://rickandmortyapi.com
[network]: https://github.com/mchirino89/MauriNet
[spmUI]: https://github.com/mchirino89/MauriKit
[rickAndMorty]: https://github.com/mchirino89/RickAndMorty
[dynamic]: https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/typography/
[ci]: https://github.com/features/actions
[RMRepo]: https://github.com/mchirino89/RickAndMorty

## 📱 MatchWord

My most recent side project, 2022 is been all MatchWord coding during free time for me. The game mechanics is a simple as they come: form as many words as possible before the time runs up, dragging your finger aroun in ANY and ALL directions.

![Match word marketing][MatchWordMarketing]

| Light mode           | Dark mode          |
|----------------------|--------------------|
| ![light mode][MatchWordLight] | ![Dark mode][MatchWordDark] |

Ready to test those creative muscles of yours? [Check it out!][mw].

## 📱 MyStickers

This is probably the first idea of an app I ever developed for publication back in 2014. The premise is simple: instead of keep losing paper lists with your missing sticker numbers from an album your completing (may that be for the [latest soccer cup tournament][soccer], an [Avenger's movie][avengers], etc), choose to use _MyStickers_ for such task. It allows for quick sorting and searching as well as sharing the list with other users via QR code.

| Light mode           | Dark mode          | iPad support             d |
|----------------------|--------------------|--------------------------|
| ![light mode][MyStickersLight] | ![Dark mode][MyStickersDark] | ![iPad support][iPad]    |

Feel free to [check it out][stickers].

## 📱 Rick and Morty

This one is my most recent experiment/hobby project and I chose a basic API for implementing it such as [Rick and Morty's wiki][wikis]. While it's far from my most visually appealing job, I think it shines on the technical side of things:

- I built it following TDD for the [networking layer][network]
- It's UI is [entirely UIKit programmatic][spmUI] 
- It follows SOLID principles, specially Single responsibility via dependency injection (leveraged by SPM)
- It features dark mode and full accessibility support ([dynamic fonts][dynamic]) on all its text
- The repo is setup with a basic flow for continues integration via [Github actions][ci]

![Rick and Morty][RickAndMortyImage]

More details of it [here][RMRepo]

## 💻🖥📱 Geeking with Mauri

This blog itself is a sample of my work. While young -I started it in mid 2020-, it shows snippets of my day to day workflow as well as some of the reading and learnings I've picked along the way.

It's simple yet functional: responsive and lightweight as well as both dark/light mode friendly 😄

![blog cover][blogImage]

---

To see it all out, check my [Github account](https://github.com/mchirino89) 👨🏽‍💻