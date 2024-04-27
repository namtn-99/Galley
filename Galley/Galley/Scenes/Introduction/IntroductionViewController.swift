//
//  IntroductionViewController.swift
//  Galley
//
//  Created by NamTrinh on 27/04/2024.
//

import UIKit

final class IntroductionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func handleBackButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}

extension IntroductionViewController {
    static func initiation() -> UIViewController {
        let storyboard = UIStoryboard(name: "Introduction", bundle: nil)
        let vc = storyboard.instantiateInitialViewController()!
        return vc
    }
}
