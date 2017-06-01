//
//  CreateViewController.swift
//  presentation.2
//
//  Created by keniku_macbook on 2017/04/03.
//  Copyright © 2017年 keniku_macbook. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {
    
    //メモNo
    var memoNo = ""
    
    var colornumber:Int = 0
    
    var textView: UITextView!
    
    @IBOutlet var titleTextField: UITextField!
    
    //NSUserDefaultsを宣言
    let saves = UserDefaults.standard
    
    //保存
    @IBAction func saveButton(sender: AnyObject) {
        saves.set(memo.text, forKey: "myText"+memoNo)
        saves.set(titleTextField.text, forKey: "myTitle"+memoNo)
        
        // アラートを作成
        let alert = UIAlertController(
            title: "保存完了", message: "保存しました", preferredStyle: .alert)
        
        // アラートにボタンをつける
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            self.dismiss(animated: true, completion: nil)}))
        
        // アラート表示
        self.present(alert, animated: true, completion: nil)
    }
    //メモ
    @IBOutlet weak var memo: UITextView!
    
    
    override func viewDidLoad() {
        colornumber = saves.integer(forKey: "color")
        saves.register(defaults: ["myText"+memoNo:""])
        saves.register(defaults: ["myTitle"+memoNo:""])
        titleTextField.text = saves.string(forKey: "myTitle"+memoNo)
        memo.text = saves.string(forKey: "myText"+memoNo)
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func deletememo () {
        saves.removeObject(forKey: "myTitle"+memoNo)
        saves.removeObject(forKey: "myText"+memoNo)
        
        // アラートを作成
        let alert = UIAlertController(
            title: "削除", message: "消去しました", preferredStyle: .alert)
        
        // アラートにボタンをつける
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            self.dismiss(animated: true, completion: nil)}))
        
        // アラート表示
        self.present(alert, animated: true, completion: nil)
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
