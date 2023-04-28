[![Build Status][build status badge]][build status]
[![License][license badge]][license]
[![Platforms][platforms badge]][platforms]

# SwiftCoreSymbolication

A Swift wrapper around the CoreSymbolication private framework on macOS.

CoreSymbolication provides a very powerful system for looking up and extracting symbolic information from mach-o executables, dyld shared caches, and dSYMs.

## Integration

Swift package manager:

```swift
dependencies: [
    .package(url: "https://github.com/ChimeHQ/SwiftCoreSymbolication.git")
]
```

SPM seems to be unable to make use of a modulemap link directive. This means that you need to add some special linker flags to any executable target that uses the [CoreSymbolication](https://github.com/ChimeHQ/CoreSymbolication) library, which this has as a dependency.

```swift
linkerSettings: [
  .unsafeFlags([
  "-Xlinker", "-F",
  "-Xlinker", "/System/Library/PrivateFrameworks",
   "-Xlinker", "-framework",
   "-Xlinker", "CoreSymbolication",
]),
```

## Suggestions or Feedback

We'd love to hear from you! Get in touch via an issue or pull request.

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.

[build status]: https://github.com/ChimeHQ/SwiftCoreSymbolication/actions
[build status badge]: https://github.com/ChimeHQ/SwiftCoreSymbolication/workflows/CI/badge.svg
[license]: https://opensource.org/licenses/BSD-3-Clause
[license badge]: https://img.shields.io/github/license/ChimeHQ/SwiftCoreSymbolication
[platforms]: https://swiftpackageindex.com/ChimeHQ/SwiftCoreSymbolication
[platforms badge]: https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2FChimeHQ%2FSwiftCoreSymbolication%2Fbadge%3Ftype%3Dplatforms

