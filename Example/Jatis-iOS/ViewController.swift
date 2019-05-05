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
        self.generateTextfield()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let destination = segue.destination as? SecondViewController
        self.view.endEditing(true)
        
        if segue.identifier == "segueNext" {
            destination?.dataUsername = stringUsername
            destination?.dataPassword = stringPassword
        }
        
    }

}


extension ViewController {
    
    
    func generateBannerView(){
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
        firstBannerView.addRoundShadow(fillColor: .white, cornerRadius: 20, shadowColor: .black, shadowOpacity: 0.9, shadowOffSet: CGSize(width: 4, height: 5), shadowRadius: 15, scale: 1)
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
        usernameTextfield.fontPlaceholder = UIFont(name: "Futura", size: 14)!
        usernameTextfield.textColor = .darkText
        usernameTextfield.doneButtonColor = .blue
        usernameTextfield.placeHolderBeforeColor = .lightGray
        usernameTextfield.labelPlaceholder.textAlignment = .left
        usernameTextfield.textField.textAlignment = .left
        usernameTextfield.delegate = self
        usernameTextfield.setJatisTextField()
        usernameView.addSubview(usernameTextfield)
        
        
        passwordView.layoutIfNeeded()
        passwordTextfield.tagTextfield = 2
        passwordTextfield.isUsePeekButton = true
        passwordTextfield.isSecure = true
        passwordTextfield.isUsePeekButton = true
        passwordTextfield.textPlaceholder = "Password"
        passwordTextfield.size = passwordView.bounds.size
        passwordTextfield.fontPlaceholder = UIFont(name: "Futura", size: 14)!
        passwordTextfield.textColor = .darkText
        passwordTextfield.placeHolderBeforeColor = .lightGray
        passwordTextfield.delegate = self
        passwordTextfield.labelPlaceholder.textAlignment = .left
        passwordTextfield.textField.textAlignment = .left
        passwordTextfield.setJatisTextField()
        passwordTextfield.doneButtonColor = .blue
        passwordView.addSubview(passwordTextfield)
    }
}

extension ViewController : JatisBannerProtocol, JatisTextFieldProtocol {
    
    func didJatisTextBeginEditing(_ data: String, tagTextField: Int) {
        self.setValueUsernamePassword(data: data, tag: tagTextField)
    }
    
    func didJatisTextEndEditing(_ data: String, tagTextField: Int) {
        self.setValueUsernamePassword(data: data, tag: tagTextField)
    }
    
    func didJatisTextChange(_ data: String, tagTextField: Int) {
        self.setValueUsernamePassword(data: data, tag: tagTextField)
    }
 
    func didSelectBanner(_ data: String, tagBanner  : Int) {
        print("\(data) & \(tagBanner)")
    }
    
    
    func setValueUsernamePassword(data : String, tag: Int){
        switch tag {
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
   
}

