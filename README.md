# Constraint

## Requirements

- iOS 9.0+
- Xcode 9.3+
- Swift 4.1+


## Installation

### Carthage

[Carthage](https://github.com/Carthage/Carthage) is a decentralized dependency manager that builds your dependencies and provides you with binary frameworks.

You can install Carthage with [Homebrew](http://brew.sh/) using the following command:

```bash
$ brew update
$ brew install carthage
```

To integrate Constraint into your Xcode project using Carthage, specify it in your `Cartfile`:

```
github "sora0077/Constraint" "master"
```

Run `carthage update` to build the framework and drag the built `Constraint.framework` into your Xcode project.

## Usage

### Quick Start

```swift
import Constraint

class MyViewController: UIViewController {

    lazy var box = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(box)
        constrain(box) { box in
            box.size.equalTo(50)
            box.center.equalTo(box.superview.center)
        }
    }
}
```
