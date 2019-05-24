//
//  MyViewSecond.swift
//  Xib
//
//  Created by Art Karma on 5/24/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class MyViewSecond: UIView {

    @IBOutlet weak var mySwitch: UISwitch!
    
    var myView: UIView!
    var nibName = "MyViewSecond"

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
        setupView()
    }
    
    
    func loadFromNib() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        
        return view
    }
    
    func setupView() {
        myView = loadFromNib()
        myView.frame = bounds
        myView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        myView.backgroundColor = .purple
        addSubview(myView)
    }
}
