<p align="center">
<a href="https://github.com/GregoryConrad/mimir/actions"><img src="https://github.com/GregoryConrad/mimir/actions/workflows/build.yml/badge.svg" alt="Build Status"></a>
<a href="https://github.com/GregoryConrad/mimir"><img src="https://img.shields.io/github/stars/GregoryConrad/mimir.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Github Stars"></a>
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="MIT License"></a>
</p>

<p align="center">
<img src="https://github.com/GregoryConrad/mimir/blob/main/assets/prototype-logo.png?raw=true" width="50%" alt="Mimir Banner" />
</p>

A batteries-included database for Dart & Flutter based on [Meilisearch](https://www.meilisearch.com).

---

## Features
- 🔎 Typo tolerant full-text search *with no extra configuration needed*
- 🔥 Blazingly fast search and reads (written in Rust)
- 🤝 Flutter friendly with a super easy-to-use API (see demo below!)
- 🔱 Powerful, declarative, and reactive queries
- 🔌 Cross-platform support ([web hopefully coming soon!](https://github.com/GregoryConrad/mimir/issues/10))


## Demo
With Flutter, you can get started with as little as:
```dart
// Get an "index" to store our movies
final instance = await Mimir.defaultInstance;
final index = instance.getIndex('movies');

// Add movies to our index
await index.addDocuments(myMovies);

// Perform a search!
final results = await index.search(query: 'jarissic park'); // returns Jurassic Park!
```
![Demo Video](https://media3.giphy.com/media/d1qBJUUSwbJYOeKhhz/giphy.gif)


## Getting Started
- With Flutter, run `flutter pub add flutter_mimir`
- For Dart-only, run `dart pub add mimir`


## Documentation
TODO
