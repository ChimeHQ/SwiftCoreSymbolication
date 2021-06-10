[![Github CI](https://github.com/stacksift/SwiftCoreSymbolication/workflows/CI/badge.svg)](https://github.com/stacksift/SwiftCoreSymbolication/actions)

# SwiftCoreSymbolication

A Swift wrapper around the CoreSymbolication private framework on macOS.

CoreSymbolication provides a very powerful system for looking up and extracting symbolic information from mach-o executables, dyld shared caches, and dSYMs.

## Integration

Swift package manager:

```swift
dependencies: [
    .package(url: "https://github.com/stacksift/SwiftCoreSymbolication.git")
]
```

SPM seems to be unable to make use of a modulemap link directive. This means that you need to add some special linker flags to any executable target that uses the CoreSymbolication library, which this has as a dependency.

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

We'd love to hear from you! Get in touch via [twitter](https://twitter.com/stacksift), an issue, or a pull request.

Please note that this project is released with a [Contributor Code of Conduct](CODE_OF_CONDUCT.md). By participating in this project you agree to abide by its terms.
