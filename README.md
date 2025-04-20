# Nugget External Dependency

A Swift Package Manager package containing external dependencies for the Nugget project.

## Requirements

- iOS 14.0+
- macOS 10.15+
- Swift 5.0+

## Installation

### Swift Package Manager

Add the following to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/BudhirajaRajesh/NuggetExternalDependency.git", .exact("1.0.0"))
]
```

Or add it to your Xcode project:
1. File > Add Packages...
2. Enter the package URL
3. Select your target and click "Add Package"

## Usage

```swift
import NuggetExternalDependency

let dependency = NuggetExternalDependency()
```

## Development

1. Clone the repository
2. Open the package in Xcode
3. Make your changes
4. Run tests: `swift test`

## License

ISC 
