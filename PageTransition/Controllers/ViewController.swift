//
//  ViewController.swift
//  PageTransition
//
//  Created by 山本大翔 on 2021/02/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var MainTextField: UITextField!
    var mainValue = MainValue()
    var secondValue = SecondValue()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func topButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Second", bundle: nil) //　この処理を書いていなかったのでエラー↑
        let secondVc = storyboard.instantiateViewController(withIdentifier: "second") as! SecondViewController
        secondVc.mainValue.mainText = MainTextField.text ?? ""
        self.present(secondVc, animated: true, completion: nil)
    }
    
}

