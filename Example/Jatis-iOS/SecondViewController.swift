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
        let jatisTxtField = JatisTextField(tagTextfield: 1, textPlaceHolder: "placeholder",
                                           size: textFieldView.bounds.size,
                                           fontPlaceholder: UIFont(name: "Futura",size: 12)!,
                                           fontTextField: UIFont(name: "Helvetica", size: 14)!,
                                           textColor: .red, placeHolderBeforeColor: .lightGray,
                                           placeHolderAfterColor: .darkText)
        jatisTxtField.delegate = self
        textFieldView.addSubview(jatisTxtField)
    }
}


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
