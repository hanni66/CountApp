//
//  ViewController.swift
//  CountApp
//
//  Created by 김하은 on 2022/05/06.
//

import UIKit

class ViewController: UIViewController {      //UIViewController를 상속받음.
    
    
    @IBOutlet weak var countLabel: UILabel!    // 동그라미 안에가 채워져 있으면 연결이 되어 있음! (뷰컨트롤러랑 코드랑 연결함)
    @IBOutlet weak var plusBtn: UIButton!
    @IBOutlet weak var minusBtn: UIButton!
    
    @IBAction func plus(_ sender: Any) {
        print("plus")
        count+=1
        countLabel.text = "\(count)"
    }
    
    @IBAction func minus(_ sender: Any) {
        print("minus")
        count-=1
        countLabel.text = "\(count)"
    }
    
    var count = 0
    
    override func viewDidLoad() {           //UIViewController에서 override한 함수
        super.viewDidLoad()
        // 뷰 접근 방법
//        view.backgroundColor = .green
        // countLabel의 글자를 바꿔줌.
        countLabel.text = "\(count)"
        plusBtn.setTitle("+", for: .normal)
        plusBtn.backgroundColor = .blue
        
        minusBtn.setTitle("-", for: .normal)
        minusBtn.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
}

