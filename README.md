# MZVariant

[![CI Status](http://img.shields.io/travis/muzcity/MZVariant.svg?style=flat)](https://travis-ci.org/muzcity/MZVariant)
[![Version](https://img.shields.io/cocoapods/v/MZVariant.svg?style=flat)](http://cocoapods.org/pods/MZVariant)
[![License](https://img.shields.io/cocoapods/l/MZVariant.svg?style=flat)](http://cocoapods.org/pods/MZVariant)
[![Platform](https://img.shields.io/cocoapods/p/MZVariant.svg?style=flat)](http://cocoapods.org/pods/MZVariant)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MZVariant is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "MZVariant"
```

## Usage
```Swift
// used for basic type
var variant = MZVariant("1234")
let variant1 = MZVariant(98765)

if let value = variant.value(type: String.self) {
    print("\(value)")
}

if let value = variant1.value(type: Int.self) {
    print("\(value)")
}

print("\(variant.setValue(value: "5555"))")

// type check function.
if variant.isIncludedType(value: Int.self) {
    print("inner type is Int")
}
else {
    print("inner type is other")
}

if variant.isIncludedType(value: String.self) {
    print("inner type is String")
}
else {
    print("inner type is other")
}

// used for class
let c = SomeClass()
let variant2 = MZVariant(c)

if let value = variant2.value(type: SomeClass.self) {
    print("\(value.num)")
}


// used for dictionary
var dictionary : [String:MZVariant] = [:]

dictionary["key"] = MZVariant("mzvariant value")
dictionary["key1"] = MZVariant(123.4567)


if let value = dictionary["key"]?.value(type: String.self) {
    print("\(value)")
}

if let value = dictionary["key1"]?.value(type: Double.self) {
    print("\(value)")
}
```

## Author

muzcity@gmail.com

## License

MZVariant is available under the MIT license. See the LICENSE file for more info.
