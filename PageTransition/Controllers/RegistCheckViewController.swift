//
//  RegistCheckViewController.swift
//  PageTransition
//
//  Created by 山本大翔 on 2021/02/13.
//

import UIKit

class RegistCheckViewController: UIViewController {
    var mainValue = MainValue()
    var secondValue = SecondValue()
//    var registCheckArg = String()
//    var secondDetail = String()
//    var secondFile = String()
    
    @IBOutlet weak var mainLable: UILabel!
    @IBOutlet weak var secondDetailLabel: UILabel!
    @IBOutlet weak var secondFileLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLable.text = mainValue.mainText
        secondDetailLabel.text = secondValue.secondDetail
        secondFileLable.text = secondValue.secondFile
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("読み込まれた画面数チェック")
    }
    
    @IBAction func back(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let mainVc = storyboard.instantiateViewController(withIdentifier: "mainpage") as! ViewController
        mainVc.modalPresentationStyle = .fullScreen
        self.present(mainVc, animated: true, completion: nil)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
