//
//  ViewController.swift
//  Basic_Layout
//
//  Created by 신상우 on 2022/03/20.
//

import UIKit

/*
 hugging_priority : 우선순위 높은 뷰가 제약사항 유지, 낮은 뷰가 늘어남
 compression resistance priority : 우선 순위 높은 뷰가 제약사항 유지, 낮은 뷰가 찌그러짐!
 priority는 1~ 1000이 있고 높을수록 우선순위가 높은 것이며 1000은 절대적으로 제약이 안바뀜을 의미함.
 
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView() // priority 테스트용 뷰
        
        view.setContentHuggingPriority(.defaultLow, for: .horizontal) // huggingPriority 설정 메소드
        print(view.contentHuggingPriority(for: .horizontal)) // priority 확인
        view.translatesAutoresizingMaskIntoConstraints = false
        
    }


}

