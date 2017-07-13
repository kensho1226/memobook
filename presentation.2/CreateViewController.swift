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
    
    //メモ
    @IBOutlet weak var memo: UITextView!
    
    
    @IBOutlet var titleTextField: UITextField!
    
    var titlenamearray:[String] = []
    
    var memoarray:[String] = []
    
    var titlenamearraycount:Int = 0
    
    //NSUserDefaultsを宣言
    let saves = UserDefaults.standard
    
    //保存
    @IBAction func saveButton(sender: AnyObject) {
//        saves.set(memo.text, forKey: "myText"+memoNo)
//        saves.set(titleTextField.text, forKey: "myTitle"+memoNo)
        if titleTextField.text == nil {
           
            let alert: UIAlertController = UIAlertController(title: "保存できません", message: "タイトルを入力してください。", preferredStyle: .alert)
            // アラートにボタンをつける
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
                self.dismiss(animated: true, completion: nil)}))
            
            // アラート表示
            self.present(alert, animated: true, completion: nil)
            
        }else{
            if memo.text == nil {
                let alert: UIAlertController = UIAlertController(title: "保存できません", message: "本文を入力してください。", preferredStyle: .alert)
                
                // アラートにボタンをつける
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
                    self.dismiss(animated: true, completion: nil)}))
                
                // アラート表示
                self.present(alert, animated: true, completion: nil)
            }else{
                titlenamearray.append(titleTextField.text!)
                memoarray.append(textView.text!)
                saves.set(memoarray, forKey: "memo")
                saves.set(titlenamearray, forKey: "titlearray")
                
                // アラートを作成
                let alert = UIAlertController(
                    title: "保存完了", message: "保存しました", preferredStyle: .alert)
                
                // アラートにボタンをつける
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
                    self.dismiss(animated: true, completion: nil)}))
                
                // アラート表示
                self.present(alert, animated: true, completion: nil)
            }
        }
        
    }
    
    override func viewDidLoad() {
        titlenamearray = saves.object(forKey: "titlearray") as! [String]
        print("Title: ", titlenamearray)
        print("memo: ", titlenamearray)
        
        if saves.object(forKey: "memo") != nil && titlenamearray.count != 0{
            memoarray = saves.object(forKey: "memo") as! [String]
            print(memoarray)
            titleTextField.text = String(titlenamearray[Int(memoNo)!])
            memo.text = String(memoarray[Int(memoNo)!])
        }else{
            memoarray = []
            memo.text = ""
        }
        
//        colornumber = saves.integer(forKey: "color")
//        saves.register(defaults: ["myText"+memoNo:""])
//        saves.register(defaults: ["myTitle"+memoNo:""])
//        titleTextField.text = saves.string(forKey: "myTitle"+memoNo)
//        memo.text = saves.string(forKey: "myText"+memoNo)
        
        if  saves.object(forKey: "titlearray") as? [String] != nil{
            titlenamearray = saves.object(forKey: "titlearray") as! [String]
        }else{
            titlenamearray = []
        }
        
        super.viewDidLoad()
        
//        if colornumber == 0 {
//            textView.textColor = UIColor.blue
//        }else if colornumber == 1 {
//            textView.textColor = UIColor.red
//        }else if colornumber == 2 {
//            textView.textColor = UIColor.green
//        }else{
//            textView.textColor = UIColor.white
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func deletememo () {
//        saves.removeObject(forKey: "myTitle"+memoNo)
//        saves.removeObject(forKey: "myText"+memoNo)
        
        titlenamearray.remove(at: Int(memoNo)!)
        memoarray.remove(at: Int(memoNo)!)
        
        saves.set(titlenamearray, forKey: "titlearray")
        saves.set(memoarray, forKey: "memo")
        
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
