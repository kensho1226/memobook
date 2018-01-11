//
//  settingViewController.swift
//  presentation.2
//
//  Created by keniku_macbook on 2017/08/06.
//  Copyright © 2017年 keniku_macbook. All rights reserved.
//

import UIKit

class settingViewController: UIViewController {
    
    var saves = UserDefaults.standard
    
    @IBOutlet var label1:UITextField!
    @IBOutlet var label2:UITextField!
    @IBOutlet var label3:UITextField!
    @IBOutlet var label4:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        label1.text = saves.object(forKey: "label1") as? String
//        label2.text = saves.object(forKey: "label2") as? String
//        label3.text = saves.object(forKey: "label3") as? String
//        label4.text = saves.object(forKey: "label4") as? String
    }
    
    override func viewWillAppear(_ animated: Bool){
        super.viewDidDisappear(animated)
//        
//        label1.text = saves.object(forKey: "label1") as? String
//        label2.text = saves.object(forKey: "label2") as? String
//        label3.text = saves.object(forKey: "label3") as? String
//        label4.text = saves.object(forKey: "label4") as? String
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func saveButton(sender: AnyObject) {
        
//        if (label1.text?.isEmpty)! {
//            let alert: UIAlertController = UIAlertController(title: "保存できません", message: "タイトルを入力してください。", preferredStyle: .alert)
//            // アラートにボタンをつける
//            alert.addAction(UIAlertAction(title: "OK", style: .default))
//            
//            // アラート表示
//            self.present(alert, animated: true, completion: nil)
//        }else if (label2.text?.isEmpty)! {
//            let alert: UIAlertController = UIAlertController(title: "保存できません", message: "タイトルを入力してください。", preferredStyle: .alert)
//            // アラートにボタンをつける
//            alert.addAction(UIAlertAction(title: "OK", style: .default))
//            
//            // アラート表示
//            self.present(alert, animated: true, completion: nil)
//        }else if (label3.text?.isEmpty)! {
//            let alert: UIAlertController = UIAlertController(title: "保存できません", message: "タイトルを入力してください。", preferredStyle: .alert)
//            // アラートにボタンをつける
//            alert.addAction(UIAlertAction(title: "OK", style: .default))
//            
//            // アラート表示
//            self.present(alert, animated: true, completion: nil)
//        }else if (label4.text?.isEmpty)! {
//            let alert: UIAlertController = UIAlertController(title: "保存できません", message: "タイトルを入力してください。", preferredStyle: .alert)
//            // アラートにボタンをつける
//            alert.addAction(UIAlertAction(title: "OK", style: .default))
//            
//            // アラート表示
//            self.present(alert, animated: true, completion: nil)
//        }else{
            saves.set(label1.text, forKey: "label1")
            saves.set(label2.text, forKey: "label2")
            saves.set(label3.text, forKey: "label3")
            saves.set(label4.text, forKey: "label4")
            
            let alert: UIAlertController = UIAlertController(title: "保存完了", message: "保存しました", preferredStyle: .alert)
            // アラートにボタンをつける
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
                self.navigationController?.popToRootViewController(animated: true)}))
        
            // アラート表示
            self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func back () {
        self.dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
