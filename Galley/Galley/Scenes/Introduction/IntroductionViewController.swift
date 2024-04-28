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

extension IntroductionViewController: StoryboardSceneBased {
    static var sceneStoryboard: UIStoryboard = UIStoryboard(name: "Introduction", bundle: nil)
}
