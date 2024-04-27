//
//  TextTestViewController.swift
//  Galley
//
//  Created by NamTrinh on 27/04/2024.
//

import UIKit

final class TextTestViewController: UIViewController {

    @IBOutlet weak var textTableView: UITableView!
    
    private let data: [Int] = Array(stride(from: 10, through: 300, by: 2))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    @IBAction func handleGotItButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    private func setupView() {
        textTableView.register(cellType: TextTestTableViewCell.self)
        textTableView.dataSource = self
        textTableView.rowHeight = UITableView.automaticDimension
        textTableView.reloadData()
    }

}

extension TextTestViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: TextTestTableViewCell.self)
        cell.configCell(size: data[indexPath.row])
        return cell
    }
}

extension TextTestViewController: StoryboardSceneBased {
    static var sceneStoryboard: UIStoryboard = UIStoryboard(name: "TextTest", bundle: nil)
}
