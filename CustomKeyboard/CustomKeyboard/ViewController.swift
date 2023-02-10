//
//  ViewController.swift
//  CustomKeyboard
//
//  Created by 신상우 on 2023/02/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 커스텀 키보드 설정 방법!
//        self.firstTextField.inputView = "커스텀 키보드 뷰"
        
        // 1. nib파일 정보 가져오기
        let loadNib = Bundle.main.loadNibNamed("CustomKeyboard", owner: nil) // 뷰가 배열로 관리된다.
        let myKeyboardView = loadNib?.first as! CustomKeyboard
        myKeyboardView.delegate = self
        
        firstTextField.inputView = myKeyboardView
    }
}

extension ViewController: CustomKeyboardDelegate {
    func keyboardTapped(str: String) {
        let oldNumber = Int(firstTextField.text!.replacingOccurrences(of: ",", with: ""))
        var newNumber = Int(str)
        
        if str == "00" && oldNumber != nil {
            newNumber = oldNumber! * 100
        }
        
        if str == "000" && oldNumber != nil {
            newNumber = oldNumber! * 1000
        }

        
        if let hasNumber = newNumber {
            let numberFormatter = NumberFormatter()
            numberFormatter.numberStyle = .decimal
            if let formatted = numberFormatter.string(from: NSNumber(value: hasNumber)) {
                firstTextField.text = String(describing: formatted)
            }
        }
    }
}

