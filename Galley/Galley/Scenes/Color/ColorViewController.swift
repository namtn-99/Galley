//
//  ColorViewController.swift
//  Galley
//
//  Created by NamTrinh on 27/04/2024.
//

import UIKit

final class ColorViewController: UIViewController {

    var colorTestType: ColorTestType = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        if let color = colorTestType.color {
            view.backgroundColor = color
        } else {
            let colors: [UIColor] = [#colorLiteral(red: 0.9960784314, green: 0.003921568627, blue: 0.6980392157, alpha: 1), #colorLiteral(red: 0.007843137255, green: 0.02352941176, blue: 0.5764705882, alpha: 1), #colorLiteral(red: 0, green: 0.831372549, blue: 0.9921568627, alpha: 1), #colorLiteral(red: 0.1333333333, green: 0.737254902, blue: 0.1490196078, alpha: 1), #colorLiteral(red: 0.9607843137, green: 0.9960784314, blue: 0.01176470588, alpha: 1), #colorLiteral(red: 0.9921568627, green: 0.003921568627, blue: 0.007843137255, alpha: 1)]
            
            view.applyGradient(colors: colors, startPoint: CGPoint(x: 0.5, y: 0), endPoint: CGPoint(x: 0.5, y: 1))
        }
    }
    
    @IBAction func handleGotItButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
}

extension ColorViewController: StoryboardSceneBased {
    static var sceneStoryboard: UIStoryboard = UIStoryboard(name: "Color", bundle: nil)
}
