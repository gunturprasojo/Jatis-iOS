//
//  SecondViewController.swift
//  Jatis-iOS_Example
//
//  Created by Guntur Budi on 29/04/19.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import Jatis_iOS

class SecondViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var labelUsername: UILabel!
    @IBOutlet var labelPassword: UILabel!
    
    var dataUsername: String = ""
    var dataPassword: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelUsername.text = dataUsername
        labelPassword.text = dataPassword
    }
    

}
