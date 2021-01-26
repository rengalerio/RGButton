# RGButton
A CocoaPods library written in Swift

[![build](https://api.travis-ci.com/rengalerio/RGButton.svg?branch=master&status=passed)](https://travis-ci.org/rengalerio/RGButton) ![platform](https://img.shields.io/badge/platform-ios-blue.svg) [![license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](./LICENSE.md) [![Version](https://img.shields.io/cocoapods/v/RGButton.svg?style=flat)](http://cocoapods.org/pods/RGButton)

Create your own dynamically designed buttons using RGButton.


## Preview

Create your customizable buttons like these using the interface builder:

![preview](https://github.com/rengalerio/RGButton/blob/master/Resources/view_hierarchy.png)
![preview](https://github.com/rengalerio/RGButton/blob/master/Resources/rgbutton.gif)

## Install

Integrate _RGButton_ into your Xcode project using CocoaPods:

```ruby
use_frameworks!

pod 'RGButton'
```

## Usage

Drag and drop an `UIView` object into your view controller and set its class and module to `RGButton`.

Customise your button by adding child views in your UIButton.

Connect `IBOutlet` to your `ViewController` class

![preview](https://github.com/rengalerio/RGButton/blob/master/Resources/outlet_1.png)
![preview](https://github.com/rengalerio/RGButton/blob/master/Resources/outlet_2.png)
![preview](https://github.com/rengalerio/RGButton/blob/master/Resources/outlet_3.png)


### Inspectables

| Attribute        | Description      | Default value  |
| ------------- |-------------| -----|
| `animates`      | Touch animation     | true |
| `circular`      | Sets the corner radius to half of button's height. `cornerRadius` _is disregarded if set to true_    | false |
| `cornerRadius`      | Fixed cornder radius     | 0.0 |
| `topLeft`      | Whether corner radius should be applied at the top left corner of the view     | true |
| `topRight`      | Whether corner radius should be applied at the top right corner of the view     | true |
| `bottomLeft`      | Whether corner radius should be applied at the bottom left corner of the view     | true |
| `bottomRight`      | Whether corner radius should be applied at the bottom right corner of the view     | true |
| `borderWidth`      | Border width     | 0.0 |
| `borderColor`      | Border color  | clear |
| `shadowColor`      | Shadow color     | clear |
| `shadowRadius`      | Shadow radius     | 0.0 |
| `shadowOpacity`      | Shadow opacity     | 0.0 |
| `shadowOffset`      | Shadow offset      | width: 0.0, height: -1.0 |
| `titleLabelColor`      | Text Color of first immediate `UILabel` subview from the view's hierarchy    | black |
| `imageTintColor`      | Tint Color of first & immediate `UIImageView` subview from the view's hierarchy      | black |
| `firstColor`      | First color in gradient    | clear |
| `middleColor`      | Middle color in gradient    | clear |
| `lastColor`      | Last color in gradient    | clear |
| `isHorizontal`      | Whether gradient is horizontal    | true |

### Other Attributes

| Attribute        | Description      |
| ------------- |-------------|
| `titleLabels`      | Returns immediate `UILabel` subviews from the view's hierarchy     |
| `titleLabel`      | Returns the first immediate `UILabel` subview from the view's hierarchy    |
| `imageViews`      | Returns immediate `UIImageView` subviews from the view's hierarchy     |
| `imageView`      | Returns the first immediate `UIImageView` subview from the view's hierarchy     |

## Issues

Feel free to submit issues and features requests.

## Author

Reniel Galerio

- [Github](https://github.com/rengalerio)
- [LinkedIn](https://www.linkedin.com/in/reniel-don-galerio-7546a016a/)

## License
```
MIT License

Copyright (c) 2021 Reniel Galerio

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
