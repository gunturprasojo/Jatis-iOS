//
//  ViewController.swift
//  Jatis-iOS
//
//  Created by Guntur Budi on 04/26/2019.
//  Copyright (c) 2019 Guntur Budi. All rights reserved.
//

import UIKit

import Jatis_iOS

class ViewController: UIViewController {

    //  Declaration of UIView Outlet
    @IBOutlet var firstBannerView: UIView!
    
    @IBOutlet var loginView: UIView!
    
    @IBOutlet var usernameView: UIView!
    @IBOutlet var passwordView: UIView!
    var stringUsername : String = ""
    var stringPassword : String = ""
    
    let jatisBanner = JatisBanner()
    
    var usernameTextfield = JatisTextField()
    var passwordTextfield = JatisTextField()
    
    //  Declaration of example objects
    let images:[UIImage] =  [
        UIImage(named: "pic-1")!,
        UIImage(named: "pic-2")!,
        UIImage(named: "pic-3")!,
    ]
    
    let imagesWide:[UIImage] =  [
        UIImage(named: "picWide-1")!,
        UIImage(named: "picWide-2")!,
        UIImage(named: "picWide-3")!,
    ]
    
    let imagesPortrait:[UIImage] =  [
        UIImage(named: "picPortrait-1")!,
        UIImage(named: "picPortrait-2")!,
        UIImage(named: "picPortrait-3")!,
    ]
    
    let _id:[String] =  [
        "Batik",
        "Moon Tattoo",
        "Coffee",
    ]
    
    //============================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.generateBannerView()
        self.generateShadow()
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension ViewController {
    
    
    func generateBannerView(){
        
        //  1
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
        firstBannerView.addRoundShadow(fillColor: .white, cornerRadius: 20, shadowColor: .gray, shadowOpacity: 0.9, shadowOffSet: CGSize(width: 5, height: 5), shadowRadius: 5, scale: 1.5)
        jatisBanner.tag = 1
        jatisBanner.delegate = self
        self.firstBannerView.addSubview(jatisBanner)
        
     
        
    }
    
    func generateShadow(){
        
        firstBannerView.addRoundShadow(fillColor: .white,
                               cornerRadius: 50,
                               shadowColor: .black,
                               shadowOpacity: 0.8,
                               shadowOffSet: CGSize(width: -5, height: 2),
                               shadowRadius: 5,
                               scale: 1)
    }
    
    func generateTextfield(){
        usernameView.layoutIfNeeded()
        usernameTextfield.tagTextfield = 1
        usernameTextfield.textPlaceholder = "Username"
        usernameTextfield.size = usernameView.bounds.size
        usernameTextfield.fontPlaceholder = UIFont(name: "Futura", size: 10)!
        usernameTextfield.textColor = .darkText
        usernameTextfield.doneButtonColor = .orange
        usernameTextfield.placeHolderBeforeColor = .lightGray
        usernameTextfield.delegate = self
        usernameTextfield.setJatisTextField()
        usernameView.addSubview(usernameTextfield)
        
        
        passwordView.layoutIfNeeded()
        passwordTextfield.tagTextfield = 2
        passwordTextfield.isSecure = true
        passwordTextfield.isUsePeekButton = false
        passwordTextfield.textPlaceholder = "Password"
        passwordTextfield.size = passwordView.bounds.size
        passwordTextfield.fontPlaceholder = UIFont(name: "Futura", size: 10)!
        passwordTextfield.textColor = .darkText
        passwordTextfield.doneButtonColor = .orange
        passwordTextfield.placeHolderBeforeColor = .lightGray
        passwordTextfield.delegate = self
        passwordTextfield.labelPlaceholder.textAlignment = .center
        passwordTextfield.textField.textAlignment = .center
        passwordTextfield.setJatisTextField()
        passwordView.addSubview(passwordTextfield)
    }
}

extension ViewController : JatisBannerProtocol, JatisTextFieldProtocol {
    
    func didJatisTextBeginEditing(_ data: String, tagTextField: Int) {
        if(tagTextField == 2 ){
            print("password textfield : \(data)")
        }
    }
    
    func didJatisTextEndEditing(_ data: String, tagTextField: Int) {
        switch tagTextField {
        case 1:
            stringUsername = data
            break
        case 2:
            stringPassword = data
            break
        default:
            break
        }
    }
    
    func didJatisTextChange(_ data: String, tagTextField: Int) {
        
        if tagTextField == 1{
            print(data )
            print(data)
        }
        
        print(data)
    }
    
    
 
    func didSelectBanner(_ data: String, tagBanner  : Int) {
        print("\(data) & \(tagBanner)")
    }
    
   
}


