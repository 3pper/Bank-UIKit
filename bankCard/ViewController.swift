//
//  ViewController.swift
//  bankCard
//
//  Created by Egor on 02.10.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var builder = {
        return ViewBilder(controller: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(hex: "#141414FF")
        builder.setPageTitle(title: "Design your virtual card")
        builder.getCard()
        builder.getColorSlider()
        builder.setIconSlider()
        builder.setDescriptionText()
        builder.addContinueButton()
    }


}

