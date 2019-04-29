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
    @IBOutlet var secondBannerView: UIView!
    @IBOutlet var thirdBannerView: UIView!
    @IBOutlet var fourthBannerView: UIView!
    @IBOutlet var fifthBannerView: UIView!
    @IBOutlet var sixthBannerView: UIView!
    
    
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
        let jatisBanner1 = JatisBanner(_id: _id, tagBanner: 1,
                                       images: images, enablePaging: true,
                                      imageContentMode: .scaleAspectFill,
                                      isImageTapped : true,
                                      scrollDirection: .horizontal,
                                      size:self.firstBannerView.bounds.size,
                                      cornerRadius: 20, aspectRatio: 9/16,
                                      animate: true,animationInterval: 3)
        jatisBanner1.tag = 5
        jatisBanner1.delegate = self
        self.firstBannerView.addSubview(jatisBanner1)
        
        //  2
        secondBannerView.layoutIfNeeded()
        let jatisBanner2 = JatisBanner(_id: _id, tagBanner: 2,
                                       images: images, enablePaging: true,
                                       imageContentMode: .scaleAspectFill,
                                       isImageTapped : true,
                                       scrollDirection: .vertical,
                                       size:self.secondBannerView.bounds.size,
                                       cornerRadius: 20, aspectRatio: 1/1,
                                       animate: true,animationInterval: 2)
        jatisBanner2.delegate = self
        self.secondBannerView.addSubview(jatisBanner2)
        
        //  3
        thirdBannerView.layoutIfNeeded()
        let jatisBanner3 = JatisBanner(_id: _id, tagBanner: 3,
                                       images: imagesPortrait, enablePaging: true,
                                       imageContentMode: .scaleToFill,
                                       isImageTapped : true,
                                       scrollDirection: .horizontal,
                                       size:self.thirdBannerView.bounds.size,
                                       cornerRadius: 20, aspectRatio: 2/1,
                                       animate: true,animationInterval: 1)
        jatisBanner3.delegate = self
        self.thirdBannerView.addSubview(jatisBanner3)
        
        //  4
        fourthBannerView.layoutIfNeeded()
        let jatisBanner4 = JatisBanner(_id: _id, tagBanner: 4,
                                       images: imagesWide, enablePaging: true,
                                       imageContentMode: .scaleToFill,
                                       isImageTapped : true,
                                       scrollDirection: .vertical,
                                       size:self.fourthBannerView.bounds.size,
                                       cornerRadius: 30, aspectRatio: 9/16,
                                       animate: true,animationInterval: 2)
        jatisBanner4.delegate = self
        self.fourthBannerView.addSubview(jatisBanner4)
        
        //  5
        fifthBannerView.layoutIfNeeded()
        let jatisBanner5 = JatisBanner(_id: _id, tagBanner: 5,
                                       images: images, enablePaging: true,
                                      imageContentMode: .scaleAspectFill,
                                      isImageTapped : true,
                                      scrollDirection: .horizontal,
                                      size:self.fifthBannerView.bounds.size,
                                      cornerRadius: 20, aspectRatio: 3/4,
                                      animate: true,animationInterval: 3)
        jatisBanner5.delegate = self
        self.fifthBannerView.addSubview(jatisBanner5)
        
        //  6
        sixthBannerView.layoutIfNeeded()
        let jatisBanner6 = JatisBanner(_id: _id, tagBanner: 6,
                                       images: images, enablePaging: true,
                                      imageContentMode: .scaleAspectFill,
                                      isImageTapped : true,
                                      scrollDirection: .vertical,
                                      size:self.sixthBannerView.bounds.size,
                                      cornerRadius: 10, aspectRatio: 1/1,
                                      animate: true,animationInterval: 2)
        jatisBanner6.delegate = self
        self.sixthBannerView.addSubview(jatisBanner6)
        
    }
    
    func generateShadow(){
        
        firstBannerView.addRoundShadow(fillColor: .white,
                               cornerRadius: 50,
                               shadowColor: .black,
                               shadowOpacity: 0.8,
                               shadowOffSet: CGSize(width: -5, height: 2),
                               shadowRadius: 5,
                               scale: 1)
        
        secondBannerView.addCustomShadow(shadowColor: UIColor.black,shadowOpacity: 0.2,
                                   shadowOffSet: CGSize(width: 8, height: 5),
                                   shadowRadius: 5)
        
        thirdBannerView.addCustomShadow(shadowColor: .black,
                                  shadowOpacity: 0.6,
                                  shadowOffSet: CGSize(width: -5, height: 5),
                                  shadowRadius: 15,
                                  scale: 5)
        
        fourthBannerView.addRoundShadow(fillColor: .cyan,
                                cornerRadius: 50,
                                shadowColor: .black,
                                shadowOpacity: 0.5,
                                shadowOffSet: CGSize(width: 5, height: 2),
                                shadowRadius: 10,
                                scale: 1)
        
        fifthBannerView.addCustomShadow(shadowColor: UIColor.black,
                                        shadowOpacity: 0.8,
                                        shadowOffSet: CGSize(width: 5, height: 2),
                                        shadowRadius: 5, scale: 5)
        
        sixthBannerView.addCustomShadow(shadowColor: UIColor.black,
                                   shadowOpacity: 0.8,
                                   shadowOffSet: CGSize(width: 5, height: 2),
                                   shadowRadius: 5, scale: 5)
    }
}

extension ViewController : JatisBannerProtocol {
    func didSelectBanner(_ data: String, tagBanner  : Int) {
        print("\(data) & \(tagBanner)")
    }
    
   
}


