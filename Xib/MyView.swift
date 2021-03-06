//
//  MyView.swift
//  Xib
//
//  Created by Art Karma on 5/24/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

@IBDesignable class MyView: UIView {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBInspectable var textLabelText: String {
        
        get {
            return myLabel.text!
        }
        
        set (textLabelText) {
                myLabel.text = textLabelText
            }
    }
    
    var view: UIView!
    var nibName: String = "MyView"
    
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
        view = loadFromNib()
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.backgroundColor = .purple
        addSubview(view)
    }
    
}
