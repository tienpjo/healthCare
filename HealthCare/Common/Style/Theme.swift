//
//  Theme.swift
//  HealthCare
//
//  Created by Tran Duc Tien on 26/09/2023.
//

import Foundation
import UIKit

public class Theme {
    public static var share = Theme()
    
    private init (){}
    
    
    // Color
    
    public var primaryColor: UIColor {
            return #colorLiteral(red: 0, green: 0.3313085437, blue: 0.7222445011, alpha: 1)
        }
        
        var secondaryColor: UIColor {
            return #colorLiteral(red: 0, green: 0.7506982088, blue: 0.6462552547, alpha: 1)
        }
        
        var accentColor: UIColor {
            return #colorLiteral(red: 0.9631381631, green: 0.3095718622, blue: 0.3006241322, alpha: 1)
        }
    
    //MARK: Background
       var defaultBGColor: UIColor {
           return #colorLiteral(red: 0.9998916984, green: 1, blue: 0.9998808503, alpha: 1)
       }
       
       var darkBGColor: UIColor {
           return #colorLiteral(red: 0.9802858233, green: 0.9804534316, blue: 0.9802753329, alpha: 1)
       }
       
       var transparentColor: UIColor {
           return #colorLiteral(red: 0.9901960784, green: 1, blue: 1, alpha: 0)
       }
       
       var alertBGColor: UIColor {
           return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).withAlphaComponent(0.45)
       }
       
       var disableButtonColor: UIColor {
           return #colorLiteral(red: 0.741094768, green: 0.7412236333, blue: 0.7410866618, alpha: 1)
       }
        var lightNavigationBarColor: UIColor {
         return #colorLiteral(red: 0.9606800675, green: 0.9608444571, blue: 0.9606696963, alpha: 1)
     }
     
        var selectedTabBarColor: UIColor {
         return #colorLiteral(red: 0, green: 0.7469342351, blue: 0.6502956152, alpha: 1)
     }
     
        var backgroundColorShadow: UIColor {
         return #colorLiteral(red: 0.4979824424, green: 0.498071909, blue: 0.4979767799, alpha: 1)
     }
     
        var pickerBackgroundColor: UIColor {
         return #colorLiteral(red: 0.9606800675, green: 0.9608443379, blue: 0.9606696963, alpha: 1)
     }
}
