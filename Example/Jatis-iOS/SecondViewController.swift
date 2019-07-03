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
    
    let popUpTable = JatisPopUpTable()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelUsername.text = dataUsername
        labelPassword.text = dataPassword
    }
    
    @IBAction func actButton(_ sender: Any) {
        popUpTable.parentSize = self.view.frame.size
        popUpTable.tableSize = CGSize(width: 300, height: 300)
        popUpTable.center = self.view.center
        popUpTable.strings = ["a","b","c"]
        popUpTable.title = "aaa"
        popUpTable.maximumDisplayedCell = 3
        popUpTable.formatPopUp()
        popUpTable.delegate = self
        self.view.addSubview(popUpTable)
    }
    
    
}


extension SecondViewController: JatisPopUpTableProtocol {
    func didSelect(_ data: String, row : Int) {
        print(data)
        self.popUpTable.removeFromSuperview()
    }
}

