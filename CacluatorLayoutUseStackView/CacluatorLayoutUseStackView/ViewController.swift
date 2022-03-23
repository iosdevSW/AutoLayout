//
//  ViewController.swift
//  CacluatorLayoutUseStackView
//
//  Created by 신상우 on 2022/03/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var btn10: UIButton!
    @IBOutlet weak var btn11: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.resultLabel.layer.cornerRadius = 50
        self.resultLabel.layer.masksToBounds = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.btn1.layer.cornerRadius = self.btn1.bounds.width / 2
        self.btn2.layer.cornerRadius = self.btn2.bounds.width / 2
        self.btn3.layer.cornerRadius = self.btn3.bounds.width / 2
        self.btn4.layer.cornerRadius = self.btn4.bounds.width / 2
        self.btn5.layer.cornerRadius = self.btn5.bounds.width / 2
        self.btn6.layer.cornerRadius = self.btn6.bounds.width / 2
        self.btn7.layer.cornerRadius = self.btn7.bounds.width / 2
        self.btn8.layer.cornerRadius = self.btn8.bounds.width / 2
        self.btn9.layer.cornerRadius = self.btn9.bounds.width / 2
        self.btn10.layer.cornerRadius = self.btn10.bounds.height / 2
        self.btn11.layer.cornerRadius = self.btn11.bounds.width / 2
    }


}

