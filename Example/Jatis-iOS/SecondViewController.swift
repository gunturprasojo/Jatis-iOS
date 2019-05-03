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

    @IBOutlet var textFieldView: UIView!
    @IBOutlet var labelView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.generateTextFieldView()
    }
    

    func generateTextFieldView(){
        textFieldView.layoutIfNeeded()
        let jatisTxtField = JatisTextField(tagTextfield: 1, textPlaceHolder: "Placeholder",
                                           textAlignment: .center, placeHolderTextAlignment: .center,
                                           isSecure: false, isUsePeekButton: false,
                                           size: self.textFieldView.bounds.size,
                                           fontPlaceholder: UIFont(name: "Futura",size: 14)!,
                                           fontTextField: UIFont(name: "Helvetica", size: 14)!,
                                           textColor:  .darkText  , placeHolderBeforeColor: .lightGray,
                                           placeHolderAfterColor: .darkText)
        jatisTxtField.delegate = self
        textFieldView.addSubview(jatisTxtField)
    }
}


extension SecondViewController : JatisTextFieldProtocol {
 
    func didJatisTextBeginEditing(_ data: String, tagTextField: Int){
        if tagTextField == 2 {
            labelView.text = data
        }
    }
    
    func didJatisTextEndEditing(_ data: String, tagTextField: Int){
        if tagTextField == 2 {
            labelView.text = data + " end"
        }
    }
    
    func didJatisTextChange(_ data: String, tagTextField: Int){
       // print(tagTextField)
        if tagTextField == 2 {
            labelView.text = data
        }
    }
    
  

}
