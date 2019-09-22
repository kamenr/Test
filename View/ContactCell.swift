//
//  ContactCell.swift
//  BoostTest
//
//  Created by Ong Kah Lam on 17/09/2019.
//  Copyright © 2019 Ong Kah Lam. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var contactImage: UIImageView!
   
   
    
    
    func setup(name: String) {
        self.contactLabel.text = name
        self.contactImage.backgroundColor = hexStringToUIColor(hex: "#ff8c00")
    }
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
