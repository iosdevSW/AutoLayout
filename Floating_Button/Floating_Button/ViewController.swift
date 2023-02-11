//
//  ViewController.swift
//  Floating_Button
//
//  Created by 신상우 on 2023/02/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if segue.identifier == "showPopup" {
            let floatingVC = segue.destination as! FloatingButtonViewController
            floatingVC.modalPresentationStyle = .overCurrentContext
        }
    }
}

