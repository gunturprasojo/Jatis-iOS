## Jatis-iOS
<p align="center">
  <img src ="https://github.com/gunturprasojo/Jatis-iOS/blob/master/Example/Jatis-iOS/Images.xcassets/jatis.imageset/lgJatis%403x.png" />
</p>


## Requirements
* iOS 12.0
* Swift 4.2
* XCode 10.2

## Installation
Jatis-iOS is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Jatis-iOS'
```

## Feature
* Banner
* Shadow

## Overview
* [Advanced API](https://github.com/gunturprasojo/Jatis-iOS/blob/master/Example/Jatis-iOS/ViewController.swift)

## How To Use
### 1. Import API :
```swift
import Jatis_iOS
```

### 2. Adding banner : 
```swift
firstBannerView.layoutIfNeeded()
    let jatisBanner1 = JatisBanner(_id: _id, images: images, enablePaging: true,
                                  imageContentMode: .scaleAspectFill,
                                  isImageTapped : true,
                                  scrollDirection: .horizontal,
                                  size:self.firstBannerView.bounds.size,
                                  cornerRadius: 20, aspectRatio: 9/16,
                                  animate: true,animationInterval: 3)
jatisBanner1.delegate = self
self.firstBannerView.addSubview(jatisBanner1)
```

### 3. Adding shadow : 
```swift
firstBannerView.addRoundShadow(fillColor: .white,
                             cornerRadius: 50,
                             shadowColor: .black,
                             shadowOpacity: 0.8,
                             shadowOffSet: CGSize(width: -5, height: 2),
                             shadowRadius: 5,
                             scale: 1)
```

### 4. Action Listener (If Image Clicked)
```swift
extension ViewController : JatisBannerProtocol {
    func didSelectBanner(_ data: String) {
        print("\(data)")
    }
}
```


GIF Demo
==========
<p align="center">
  <img src ="https://github.com/gunturprasojo/Jatis-iOS/blob/master/Example/Jatis-iOS/initialView.gif" 
       width="279" height="570"/>
</p>


## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Author

Guntur Budi, guntur.prasojo@jatis.com

## License

Jatis-iOS is available under the MIT license. See the LICENSE file for more info.
