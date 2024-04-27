//
//  TextTestTableViewCell.swift
//  Galley
//
//  Created by NamTrinh on 27/04/2024.
//

import UIKit

final class TextTestTableViewCell: UITableViewCell, NibReusable {
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    func configCell(size: Int) {
        let str = String(describing: size)
        var subStr = ""
        
        for _ in 0..<20 {
            subStr += " \(size)dpi"
        }
        titleLabel.font = UIFont(name: "Inter-Regular", size: CGFloat(size))
        titleLabel.text = str + subStr
    }
}
