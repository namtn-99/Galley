//
//  MSTestViewController.swift
//  Galley
//
//  Created by NamTrinh on 27/04/2024.
//

import UIKit

final class MSTestViewController: UIViewController {
    @IBOutlet weak var ms3000View: UIView!
    @IBOutlet weak var ms1000View: UIView!
    @IBOutlet weak var ms2000View: UIView!
    @IBOutlet weak var ms250View: UIView!
    @IBOutlet weak var ms500View: UIView!
    
    var ms3000timer: Timer?
    var ms2000Timer: Timer?
    var ms1000Timer: Timer?
    var ms500Timer: Timer?
    var ms250Timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        ms3000timer = Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(handle3000ms), userInfo: nil, repeats: true)
        ms2000Timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(handle2000ms), userInfo: nil, repeats: true)
        ms1000Timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(handle1000ms), userInfo: nil, repeats: true)
        ms500Timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(handle500ms), userInfo: nil, repeats: true)
        ms250Timer = Timer.scheduledTimer(timeInterval: 0.25, target: self, selector: #selector(handle250ms), userInfo: nil, repeats: true)
    }
    
    @objc func handle3000ms() {
        ms3000View.transform = CGAffineTransformTranslate(ms3000View.transform, 0.0, 10)
        if ms3000View.frame.origin.y > UIScreen.main.bounds.height {
            ms3000View.frame.origin.y = 50
        }
    }
    
    @objc func handle2000ms() {
        ms2000View.transform = CGAffineTransformTranslate(ms2000View.transform, 0.0, 10)
        if ms2000View.frame.origin.y > UIScreen.main.bounds.height {
            ms2000View.frame.origin.y = 50
        }
    }
    
    @objc func handle1000ms() {
        ms1000View.transform = CGAffineTransformTranslate(ms1000View.transform, 0.0, 10)
        if ms1000View.frame.origin.y > UIScreen.main.bounds.height {
            ms1000View.frame.origin.y = 50
        }
    }
    
    @objc func handle500ms() {
        ms500View.transform = CGAffineTransformTranslate(ms500View.transform, 0.0, 10)
        if ms500View.frame.origin.y > UIScreen.main.bounds.height {
            ms500View.frame.origin.y = 50
        }
    }
    
    @objc func handle250ms() {
        self.ms250View.transform = CGAffineTransformTranslate(self.ms250View.transform, 0.0, 10)
        if ms250View.frame.origin.y > UIScreen.main.bounds.height {
            ms250View.frame.origin.y = 50
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        ms3000timer?.invalidate()
        ms3000timer = nil
        ms2000Timer?.invalidate()
        ms2000Timer = nil
        ms1000Timer?.invalidate()
        ms1000Timer = nil
        ms500Timer?.invalidate()
        ms500Timer = nil
        ms250Timer?.invalidate()
        ms250Timer = nil
    }
    
    @IBAction func handleGotItButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}

extension MSTestViewController: StoryboardSceneBased {
    static var sceneStoryboard: UIStoryboard = UIStoryboard(name: "MSTest", bundle: nil)
}
