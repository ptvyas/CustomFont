//
//  ViewController.swift
//  FontDemo
//
//  Created by VYAS on 13/06/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblUser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Print all fonts
        for family in UIFont.familyNames {
            let sName: String = family as String
            print("family: \(sName)")
                    
            for name in UIFont.fontNames(forFamilyName: sName) {
                print("          \(name as String)")
            }
        }
        
        
        /*
         Font source: Google
         - https://fonts.google.com/specimen/Figtree
         - https://fonts.google.com/specimen/Palette+Mosaic
         - https://fonts.google.com/specimen/Kumar+One
         
         Steps:
         - https://rryam.com/xcode-custom-fonts
         */
        lblUser.font = Utilities.setFont(Figtree.Regular, size: 35)
//        lblUser.font = Utilities.setFont(Figtree.Medium, size: 35)
//        lblUser.font = Utilities.setFont(Figtree.Black, size: 35)
//        lblUser.font = Utilities.setFont(Figtree.Bold, size: 35)
//        lblUser.font = Utilities.setFont(Figtree.SemiBold, size: 35)
//        lblUser.font = Utilities.setFont(Figtree.ExtraBold, size: 35)
        
        //lblUser.font = Utilities.setFont(Figtree.PaletteMosaicRegular, size: 35)
        //lblUser.font = Utilities.setFont(Figtree.KumarOneRegular, size: 35)
        
        
        /*
          
         */
    }
}

class Utilities {
    public static func setFont(_ name: String, size: CGFloat) -> UIFont {
        if let font = UIFont(name: name, size: size) {
             return font
        }
        return UIFont(name: "Avenir", size: 20)!
        //fatalError("Font '\(name)' does not exist.")
    }
}

struct Figtree {
    static let Regular: String          = "Figtree-Regular"
    static let Light: String            = "Figtree-Light"
    static let LightItalic: String      = "Figtree-LightItalic"
    static let Medium: String           = "Figtree-Medium"
    static let MediumItalic: String     = "Figtree-MediumItalic"
    static let Black: String            = "Figtree-Black"
    static let BlackItalic: String      = "Figtree-BlackItalic"
    static let Bold: String             = "Figtree-Bold"
    static let BoldItalic: String       = "Figtree-BoldItalic"
    static let SemiBold: String         = "Figtree-SemiBold"
    static let SemiBoldItalic: String   = "Figtree-SemiBoldItalic"
    static let Italic: String           = "Figtree-Italic"
    static let ExtraBold: String        = "Figtree-ExtraBold"
    static let ExtraBoldItalic: String  = "Figtree-ExtraBoldItalic"
    
    static let PaletteMosaicRegular: String = "PaletteMosaic-Regular"
    static let KumarOneRegular: String  = "KumarOne-Regular"
}
