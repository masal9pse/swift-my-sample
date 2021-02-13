//
//  SecondViewController.swift
//  PageTransition
//
//  Created by 山本大翔 on 2021/02/12.
//

import UIKit

class SecondViewController: UIViewController,CatchProtrol {
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var fileNameField: UITextField!
    @IBOutlet weak var backSecondTextLabel: UILabel!
    // 構造体の定義
    var mainValue = MainValue()
    var secondValue = SecondValue()
//    var mainText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func catchData(data: String) {
        backSecondTextLabel.text = data
    }
    
    @IBAction func backToMain(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    // 目標mainTextをRegistCheckへ送りたい
    @IBAction func goToThirdButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "RegistCheck", bundle: nil) //　この処理を書いていなかったのでエラー↑
        let registCheckVc = storyboard.instantiateViewController(withIdentifier: "registcheck") as! RegistCheckViewController

        registCheckVc.mainValue.mainText = mainValue.mainText
        registCheckVc.secondValue.secondDetail = secondTextField.text ?? ""
        registCheckVc.secondValue.secondFile = fileNameField.text ?? ""
        self.present(registCheckVc, animated: true, completion: nil)
        registCheckVc.delegate = self
    }
}
