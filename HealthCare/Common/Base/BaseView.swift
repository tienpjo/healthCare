//
//  BaseView.swift
//  HealthCare
//
//  Created by Tran Duc Tien on 10/09/2023.
//

import UIKit

public class BaseUIView: UIView, ReuseableView{
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
      fatalError("init error")
        
    }
    
    func initialize() {
        
    }
    
}
