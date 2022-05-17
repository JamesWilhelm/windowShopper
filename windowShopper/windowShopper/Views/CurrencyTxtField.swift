//
//  CurrencyTxtField.swift
//  windowShopper
//
//  Created by James Wilhelm on 4/20/22.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size / 2, width: size, height: size))
        
        currencyLbl.backgroundColor = .lightGray
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = .darkGray
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    
    //when app is loaded, this is run
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
    }
    
    func customizeView(){
        layer.cornerRadius = 0.5
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {

                   let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])

                   attributedPlaceholder = place

                   textColor = .white
        }
    }
}

