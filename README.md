## Jatis-iOS
<p align="center">
  <img src ="https://github.com/gunturprasojo/Jatis-iOS/blob/master/Example/Jatis-iOS/Images.xcassets/jatis.imageset/lgJatis%403x.png" />
</p>


## Requirements
* iOS 10.2 (Minimum) - iOS 12.2 (Recommended)
* Swift 4.2
* XCode 10

## Installation
Jatis-iOS is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:
```ruby
pod 'Jatis-iOS' , '0.2.0'
```

## Feature
* Banner
* Shadow
* Textfield

## Overview
* [Advanced API](https://github.com/gunturprasojo/Jatis-iOS/blob/master/Example/Jatis-iOS/ViewController.swift)

## How To Use
### 1. Import API :
```swift
import Jatis_iOS
```

### 2. Adding banner : 
```swift
let jatisBanner = JatisBanner()
firstBannerView.layoutIfNeeded()
        jatisBanner.images = images
        jatisBanner._id = _id
        jatisBanner.aspectRatio = 9/16
        jatisBanner.animate = true
        jatisBanner.cornerRadius = 20
        jatisBanner.size = firstBannerView.bounds.size
        jatisBanner.animationInterval = 3.0
        jatisBanner.reloadBanner()
        firstBannerView.addSubview(jatisBanner)
        firstBannerView.addRoundShadow(fillColor: .white, cornerRadius: 20, 
                    shadowColor: .black, shadowOpacity: 0.9, shadowOffSet: CGSize(width: 4, height: 5), 
                    shadowRadius: 15, scale: 1)
        jatisBanner.tag = 1
        jatisBanner.delegate = self
        self.firstBannerView.addSubview(jatisBanner)
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
      var usernameTextfield = JatisTextField()
      usernameView.layoutIfNeeded()
      usernameTextfield.tagTextfield = 1
      usernameTextfield.textPlaceholder = "Username"
      usernameTextfield.size = usernameView.bounds.size
      usernameTextfield.fontPlaceholder = UIFont(name: "Futura", size: 14)!
      usernameTextfield.textColor = .darkText
      usernameTextfield.doneButtonColor = .blue
      usernameTextfield.placeHolderBeforeColor = .lightGray
      usernameTextfield.labelPlaceholder.textAlignment = .left
      usernameTextfield.textField.textAlignment = .left
      usernameTextfield.delegate = self
      usernameTextfield.setJatisTextField()
      usernameView.addSubview(usernameTextfield)
}
```


### 6. Action Handling TextField
```swift
extension ViewController : JatisTextFieldProtocol {
   func didJatisTextBeginEditing(_ data: String, tagTextField: Int) {
      
    }
    
    func didJatisTextEndEditing(_ data: String, tagTextField: Int) {
      
    }
    
    func didJatisTextChange(_ data: String, tagTextField: Int) {
       
    }
}
```


GIF Demo
==========
<p align="center">
  <img src ="https://github.com/gunturprasojo/Jatis-iOS/blob/master/Example/Jatis-iOS/demo.gif" 
       width="279" height="570"/>
</p>


## Example
To run the example project, clone the repo, and run `pod install` from the Example directory first.


## Author

Guntur Budi, guntur.prasojo@jatis.com

## License

Jatis-iOS is available under the MIT license. See the LICENSE file for more info.
