//
//  TempleViewController.swift
//  presentation.2
//
//  Created by keniku_macbook on 2017/09/07.
//  Copyright © 2017年 keniku_macbook. All rights reserved.
//

import UIKit

class TempleViewController: UIViewController {
    
    var saves = UserDefaults.standard
    
    var temp1:String!
    var temp2:String!
    var temp3:String!
    var temp4:String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func Temple1() {
        temp1 = "重要度"
        temp2 = "期限"
        temp3 = ""
        temp4 = ""
        
        saves.set(temp1, forKey: "label1")
        saves.set(temp2, forKey: "label2")
        saves.set(temp3, forKey: "label3")
        saves.set(temp4, forKey: "label4")
        
        let alert = UIAlertController(
            title: "保存", message: "テンプレート1を保存しました", preferredStyle: .alert)
        
        // アラートにボタンをつける
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            self.dismiss(animated: true, completion: nil)}))
        
        // アラート表示
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func Temple2 () {
        temp1 = ""
        temp2 = "仕事"
        temp3 = ""
        temp4 = "趣味"
        
        saves.set(temp1, forKey: "label1")
        saves.set(temp2, forKey: "label2")
        saves.set(temp3, forKey: "label3")
        saves.set(temp4, forKey: "label4")
        
        let alert = UIAlertController(
            title: "保存", message: "テンプレート2を保存しました", preferredStyle: .alert)
        
        // アラートにボタンをつける
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            self.dismiss(animated: true, completion: nil)}))
        
        // アラート表示
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func Temple3 () {
        temp1 = ""
        temp2 = ""
        temp3 = ""
        temp4 = ""
        
        saves.set(temp1, forKey: "label1")
        saves.set(temp2, forKey: "label2")
        saves.set(temp3, forKey: "label3")
        saves.set(temp4, forKey: "label4")
        
        let alert = UIAlertController(
            title: "保存", message: "テンプレート3を保存しました", preferredStyle: .alert)
        
        // アラートにボタンをつける
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            self.dismiss(animated: true, completion: nil)}))
        
        // アラート表示
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func back () {
        self.dismiss(animated: true, completion: nil)
    }
}
