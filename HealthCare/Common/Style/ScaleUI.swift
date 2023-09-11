//
//  ScaleUI.swift
//  HealthCare
//
//  Created by Tran Duc Tien on 10/09/2023.
//

import Foundation
import UIKit

enum Dimension : CGFloat {
    case IP6_WIDTH = 375
    case IP6_HEIGHT = 667
}

public class ScaleUI{
    public static var shareModule = ScaleUI()
    
    var widthScale: CGFloat = 1.0
    var heightScale: CGFloat = 1.0
    
    private init() {
    widthScale = UIScreen.main.bounds.width/Dimension.IP6_WIDTH.rawValue
    heightScale = UIScreen.main.bounds.height/Dimension.IP6_HEIGHT.rawValue
    }
    
    var titleFontSize: CGFloat {
     return 20 * self.heightScale
    }
    
    var bodyFontSize: CGFloat {
        return 16 * self.heightScale
    }
    
    var captionFontSize: CGFloat {
        return 14 * self.heightScale
    }
    
    var smallCaptionFontSize: CGFloat {
        return 13 * self.heightScale
    }
    
    var titleButtonFontSize: CGFloat {
        return 14 * self.heightScale
    }
    
    var messageFontSize: CGFloat {
        return 16 * self.heightScale
    }
    }
    
}
