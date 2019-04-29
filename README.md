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
let jatisBanner1 = JatisBanner(_id: _id, tagBanner: 1,
                                 images: images, enablePaging: true,
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

### 4. Action Handling (If Image Clicked)
```swift
extension ViewController : JatisBannerProtocol {
    func didSelectBanner(_ data: String, tagBanner  : Int) {
        print("\(data) & \(tagBanner)")
    }
}
```

### 5. Adding TextField
```swift
 @IBOutlet var textFieldView: UIView!
 @IBOutlet var labelView: UILabel!
  
override func viewDidLoad() {
        super.viewDidLoad()
        self.generateTextFieldView()
    }
    

    func generateTextFieldView(){
        textFieldView.layoutIfNeeded()
        let jatisTxtField = JatisTextField(tagTextfield: 1, textPlaceHolder: "placeholder",
                                           size: textFieldView.bounds.size,
                                           fontPlaceholder: UIFont(name: "Futura",size: 12)!,
                                           fontTextField: UIFont(name: "Helvetica", size: 14)!,
                                           textColor: .red, placeHolderBeforeColor: .lightGray,
                                           placeHolderAfterColor: .darkText)
        jatisTxtField.delegate = self
        textFieldView.addSubview(jatisTxtField)
    }
```


### 6. Action Handling TextField
```swift
extension SecondViewController : JatisTextFieldProtocol {
    func didJatisTextBeginEditing(_ data: UITextField) {
        labelView.text = "begin" + data.text!
    }

    func didJatisTextEndEditing(_ data: UITextField) {
        labelView.text = data.text! + "end"
    }

    func didJatisTextChange(_ data: UITextField) {
        labelView.text = data.text!
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
