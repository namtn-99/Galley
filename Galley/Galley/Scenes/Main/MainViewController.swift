//
//  ViewController.swift
//  Galley
//
//  Created by NamTrinh on 26/04/2024.
//

import UIKit
import Device

final class MainViewController: UIViewController {
    
    @IBOutlet weak var introductionView: UIView!
    @IBOutlet weak var colorTestView: UIView!
    @IBOutlet weak var textTestView: UIView!
    @IBOutlet weak var msTestView: UIView!
    @IBOutlet weak var deviceLabel: UILabel!
    @IBOutlet weak var iOSVersionLabel: UILabel!
    @IBOutlet weak var screenSizeLabel: UILabel!
    @IBOutlet weak var refreshRateLabel: UILabel!
    @IBOutlet weak var resolutionLabel: UILabel!
    @IBOutlet weak var aspectRatioLabel: UILabel!
    @IBOutlet weak var screenDestinyLabel: UILabel!
    
    var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupGesture()
    }
    
    private func setupView() {
        navigationController?.navigationBar.isHidden = true
        let device = UIDevice.current
        iOSVersionLabel.text = device.systemVersion
        
        resolutionLabel.text = "\(Int(screenWidth))x\(Int(screenHeight)) px"
        refreshRateLabel.text = "\(String(describing: UIScreen.main.maximumFramesPerSecond)) Hz"
    
        var fraction = Fraction(numerator: Int(screenWidth), denominator: Int(screenHeight))
        fraction.divide()
        aspectRatioLabel.text = "\(fraction.numerator):\(fraction.denominator)"
        
        getDeviceSize()
        getDeviceVersion()
    }
    
    private func setupGesture() {
        let msTap = UITapGestureRecognizer(target: self, action: #selector(handleMSTestTapped))
        msTestView.addGestureRecognizer(msTap)
        
        let textTap = UITapGestureRecognizer(target: self, action: #selector(handleTextTestTapped))
        textTestView.addGestureRecognizer(textTap)
        
        let colorTap = UITapGestureRecognizer(target: self, action: #selector(handleColorTestTapped))
        colorTestView.addGestureRecognizer(colorTap)
        
        let introTap = UITapGestureRecognizer(target: self, action: #selector(handleIntroductionTapped))
        introductionView.addGestureRecognizer(introTap)
    }
    
    
    @objc private func handleIntroductionTapped() {
        let vc = IntroductionViewController.initiation()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func handleTextTestTapped() {
        let vc = TextTestViewController.instantiate()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func handleColorTestTapped() {
        let vc = ColorTestViewController.instantiate()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func handleMSTestTapped() {
        
    }
    
    func getDeviceVersion() {
        /*** Display the device version ***/
        switch Device.version() {
            /*** iPhone ***/
        case .iPhone4:  
            deviceLabel.text = "iPhone 4"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 4")
        case .iPhone4S:
            deviceLabel.text = "iPhone 4S"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 4S")
        case .iPhone5:   
            deviceLabel.text = "iPhone 5"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 5")
        case .iPhone5C: 
            deviceLabel.text = "iPhone 5C"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 5C")
        case .iPhone5S: 
            deviceLabel.text = "iPhone 5S"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 5S")
        case .iPhone6:   
            deviceLabel.text = "iPhone 6"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 6")
        case .iPhone6S: 
            deviceLabel.text = "iPhone 6S"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 6S")
        case .iPhone6Plus: 
            deviceLabel.text = "iPhone 6 Plus"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 6 Plus")
        case .iPhone6SPlus: 
            deviceLabel.text = "iPhone 6S Plus"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 6 S Plus")
        case .iPhoneSE:   
            deviceLabel.text = "iPhone SE"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone SE")
        case .iPhone7:    
            deviceLabel.text = "iPhone 7"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 7")
        case .iPhone7Plus: 
            deviceLabel.text = "iPhone 7 Plus"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 7 Plus")
        case .iPhone8:  
            deviceLabel.text = "iPhone 8"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 8")
        case .iPhone8Plus: 
            deviceLabel.text = "iPhone 8 Plus"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone 8 Plus")
        case .iPhoneX:   
            deviceLabel.text = "iPhone X"
            screenDestinyLabel.text = "458 PPI"
            print("It's an iPhone X")
        case .iPhoneXS:  
            deviceLabel.text = "iPhone Xs"
            screenDestinyLabel.text = "458 PPI"
            print("It's an iPhone Xs")
        case .iPhoneXS_Max:
            deviceLabel.text = "iPhone Xs Max"
            screenDestinyLabel.text = "458 PPI"
            print("It's an iPhone Xs Max")
        case .iPhoneXR:  
            deviceLabel.text = "iPhone Xr"
            screenDestinyLabel.text = "326 PPI"
            print("It's an iPhone Xr")
        case .iPhone11:
            deviceLabel.text = "iPhone 11"
            screenDestinyLabel.text = "326 PPI"
        case .iPhone11Pro:
            deviceLabel.text = "iPhone 11 Pro"
            screenDestinyLabel.text = "458 PPI"
        case .iPhone11Pro_Max:
            deviceLabel.text = "iPhone 11 Pro Max"
            screenDestinyLabel.text = "458 PPI"
        case .iPhoneSE2:
            deviceLabel.text = "iPhone SE 2nd gen"
            screenDestinyLabel.text = "326 PPI"
        case .iPhone12Mini:
            deviceLabel.text = "iPhone 12 Mini"
            screenDestinyLabel.text = "476 PPI"
        case .iPhone12:
            deviceLabel.text = "iPhone 12"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone12Pro:
            deviceLabel.text = "iPhone 12 Pro"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone12Pro_Max:
            deviceLabel.text = "iPhone 12 Pro Max"
            screenDestinyLabel.text = "458 PPI"
        case .iPhone13Mini:
            deviceLabel.text = "iPhone 13 Mini"
            screenDestinyLabel.text = "476 PPI"
        case .iPhone13:
            deviceLabel.text = "iPhone 13"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone13Pro:
            deviceLabel.text = "iPhone 13 Pro"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone13Pro_Max:
            deviceLabel.text = "iPhone 13 Pro Max"
            screenDestinyLabel.text = "458 PPI"
        case .iPhoneSE3:
            deviceLabel.text = "iPhone SE 3rd gen"
            screenDestinyLabel.text = "326 PPI"
        case .iPhone14:
            deviceLabel.text = "iPhone 14"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone14Plus:
            deviceLabel.text = "iPhone 14 Plus"
            screenDestinyLabel.text = "458 PPI"
        case .iPhone14Pro:
            deviceLabel.text = "iPhone 14 Pro"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone14Pro_Max:
            deviceLabel.text = "iPhone 14 Pro Max"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone15:
            deviceLabel.text = "iPhone 15"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone15Plus:
            deviceLabel.text = "iPhone 15 Plus"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone15Pro:
            deviceLabel.text = "iPhone 15 Pro"
            screenDestinyLabel.text = "460 PPI"
        case .iPhone15Pro_Max:
            deviceLabel.text = "iPhone 15 Pro Max"
            screenDestinyLabel.text = "460 PPI"
            
            /*** iPad ***/
        case .iPad1:  
            deviceLabel.text = "iPad 1"
            print("It's an iPad 1")
        case .iPad2:   
            deviceLabel.text = "iPad 2"
            print("It's an iPad 2")
        case .iPad3:   
            deviceLabel.text = "iPad 3"
            print("It's an iPad 3")
        case .iPad4:
            deviceLabel.text = "iPad 4"
            print("It's an iPad 4")
        case .iPad5:  
            deviceLabel.text = "iPad 5"
            print("It's an iPad 5")
        case .iPad6:  
            deviceLabel.text = "iPad 6"
            print("It's an iPad 6")
        case .iPadAir:
            deviceLabel.text = "iPad Air"
            print("It's an iPad Air")
        case .iPadAir2:   
            deviceLabel.text = "iPad Air 2"
            print("It's an iPad Air 2")
        case .iPadMini:  
            deviceLabel.text = "iPad Mini"
            print("It's an iPad Mini")
        case .iPadMini2:  
            deviceLabel.text = "iPad Mini 2"
            print("It's an iPad Mini 2")
        case .iPadMini3: 
            deviceLabel.text = "iPad Mini 3"
            print("It's an iPad Mini 3")
        case .iPadMini4: 
            deviceLabel.text = "iPad Mini 4"
            print("It's an iPad Mini 4")
        case .iPadPro9_7Inch: 
            deviceLabel.text = "iPad Pro 9.7 Inch"
            print("It's an iPad Pro 9.7 Inch")
        case .iPadPro10_5Inch:
            deviceLabel.text = "iPad Pro 10.5 Inch"
            print("It's an iPad Pro 10.5 Inch")
        case .iPadPro12_9Inch: 
            deviceLabel.text = "iPad Pro 12.9 Inch"
            print("It's an iPad Pro 12.9 Inch")
            
            /*** iPod ***/
        case .iPodTouch1Gen: 
            deviceLabel.text = "iPod touch generation 1"
            print("It's a iPod touch generation 1")
        case .iPodTouch2Gen:
            deviceLabel.text = "iPod touch generation 2"
            print("It's a iPod touch generation 2")
        case .iPodTouch3Gen:
            deviceLabel.text = "iPod touch generation 3"
            print("It's a iPod touch generation 3")
        case .iPodTouch4Gen:
            deviceLabel.text = "iPod touch generation 4"
            print("It's a iPod touch generation 4")
        case .iPodTouch5Gen: 
            deviceLabel.text = "iPod touch generation 5"
            print("It's a iPod touch generation 5")
        case .iPodTouch6Gen: 
            deviceLabel.text = "iPod touch generation 6"
            print("It's a iPod touch generation 6")
        default:
            print("It's an unknown device")
        }
    }
    
    func getDeviceSize() {
        switch Device.size() {
        case .screen3_5Inch:
            print("It's a 3.5 inch screen")
            screenSizeLabel.text = "3.5 inch"
        case .screen4Inch:
            screenSizeLabel.text = "4 inch"
        case .screen4_7Inch:
            screenSizeLabel.text = "4.7 inch"
        case .screen5_5Inch:
            screenSizeLabel.text = "5.5 inch"
        case .screen5_8Inch:
            screenSizeLabel.text = "5.8 inch"
            print("It's a 5.8 inch screen")
        case .screen6_1Inch:
            screenSizeLabel.text = "6.1 inch"
            print("It's a 6.1 inch screen")
        case .screen6_5Inch:
            screenSizeLabel.text = "6.8 inch"
            print("It's a 6.8 inch screen")
        case .screen7_9Inch:
            screenSizeLabel.text = "7.9 inch"
            print("It's a 7.9 inch screen")
        case .screen9_7Inch:
            screenSizeLabel.text = "9.7 inch"
            print("It's a 9.7 inch screen")
        case .screen10_5Inch:
            screenSizeLabel.text = "10.5 inch"
            print("It's a 10.5 inch screen")
        case .screen12_9Inch:
            screenSizeLabel.text = "12.9 inch"
            print("It's a 12.9 inch screen")
        default:
            print("Unknown size")
        }
    }
}

