//
//  CustomKeyboard.swift
//  CustomKeyboard
//
//  Created by 신상우 on 2023/02/11.
//

import UIKit

protocol CustomKeyboardDelegate {
    func keyboardTapped(str: String)
}

// 보통 View 이름이랑 xib 이름이랑 똑같이 짓는다고함.
class CustomKeyboard: UIView {

    var delegate: CustomKeyboardDelegate?
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        delegate?.keyboardTapped(str: sender.titleLabel?.text ?? "")
    }
    
}
