//
//  BaseViewController.swift
//  HealthCare
//
//  Created by Tran Duc Tien on 10/09/2023.
//

import UIKit

protocol ReuseableView {
    func initialize()
}
public class BaseViewController: UIViewController, ReuseableView{
    override public func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    public func initialize() {
        
    }
}
