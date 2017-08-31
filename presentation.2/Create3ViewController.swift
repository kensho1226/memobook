//
//  Create3ViewController.swift
//  presentation.2
//
//  Created by keniku_macbook on 2017/08/05.
//  Copyright © 2017年 keniku_macbook. All rights reserved.
//

import UIKit
import Accounts

class Create3ViewController: UIViewController {

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
        if (titleTextField.text?.isEmpty)!{
            
            let alert: UIAlertController = UIAlertController(title: "保存できません", message: "タイトルを入力してください。", preferredStyle: .alert)
            // アラートにボタンをつける
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            
            // アラート表示
            self.present(alert, animated: true, completion: nil)
            
        }else{
            if (memo.text?.isEmpty)! {
                let alert: UIAlertController = UIAlertController(title: "保存できません", message: "本文を入力してください。", preferredStyle: .alert)
                
                // アラートにボタンをつける
                alert.addAction(UIAlertAction(title: "OK", style: .default))
                // アラート表示
                self.present(alert, animated: true, completion: nil)
            }else if memoNo != "0"{
                titlenamearray[Int(memoNo)!] = titleTextField.text!
                memoarray[Int(memoNo)!] = memo.text!
                saves.set(memoarray, forKey: "memo3")
                saves.set(titlenamearray, forKey: "titlearray3")
                titleTextField.text = ""
                memo.text = ""
                
                // アラートを作成
                let alert = UIAlertController(
                    title: "保存完了", message: "保存しました", preferredStyle: .alert)
                
                // アラートにボタンをつける
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
                    self.dismiss(animated: true, completion: nil)}))
                
                // アラート表示
                self.present(alert, animated: true, completion: nil)
            }else {
                titlenamearray.append(titleTextField.text!)
                memoarray.append(memo.text!)
                saves.set(memoarray, forKey: "memo3")
                saves.set(titlenamearray, forKey: "titlearray3")
                titleTextField.text = ""
                memo.text = ""
                
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
        
        
        titlenamearray = saves.object(forKey: "titlearray3") as! [String]
        print("Title: ", titlenamearray)
        print("memo: ", titlenamearray)
        
        
        if saves.object(forKey: "memo3") != nil && titlenamearray.count != 0 && memoNo != ""{
            memoarray = saves.object(forKey: "memo3") as! [String]
            print(memoarray)
            titleTextField.text = String(titlenamearray[Int(memoNo)!])!
            memo.text = String(memoarray[Int(memoNo)!])
        }else if saves.object(forKey: "memo3") != nil && titlenamearray.count != 0{
            memoNo = "0"
            memoarray = saves.object(forKey: "memo3") as! [String]
            print(memoarray)
            titleTextField.text = String(titlenamearray[Int(memoNo)!])!
            memo.text = String(memoarray[Int(memoNo)!])
        }else{
            self.memoarray = []
            self.memo.text = ""
            self.titleTextField.text = ""
        }
        
        if memoNo == "0" {
            self.memo.text = ""
            self.titleTextField.text = ""
        }
        
        //
        //        colornumber = saves.integer(forKey: "color")
        //        saves.register(defaults: ["myText"+memoNo:""])
        //        saves.register(defaults: ["myTitle"+memoNo:""])
        //        titleTextField.text = saves.string(forKey: "myTitle"+memoNo)
        //        memo.text = saves.string(forKey: "myText"+memoNo)
        
        if  saves.object(forKey: "titlearray3") as? [String] != nil{
            titlenamearray = saves.object(forKey: "titlearray3") as! [String]
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
        
        print(memoNo)
        
        if memoNo == "0" {
            let alert = UIAlertController(
                title: "削除不可", message: "消去できません", preferredStyle: .alert)
            
            // アラートにボタンをつける
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            
            // アラート表示
            self.present(alert, animated: true, completion: nil)
        }
        
        titlenamearray.remove(at: Int(memoNo)!)
        memoarray.remove(at: Int(memoNo)!)
        
        saves.set(titlenamearray, forKey: "titlearray3")
        saves.set(memoarray, forKey: "memo3")
        
        // アラートを作成
        let alert = UIAlertController(
            title: "削除", message: "消去しました", preferredStyle: .alert)
        
        // アラートにボタンをつける
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            self.dismiss(animated: true, completion: nil)}))
        
        // アラート表示
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func share(_ sender: UIBarButtonItem) {
        
        // 共有する項目
        let shareText = titleTextField.text!
        
        let activityItems = [shareText] as [Any]
        
        // 初期化処理
        let activityVC = UIActivityViewController(activityItems: activityItems, applicationActivities: nil)
        
        // 使用しないアクティビティタイプ
        let excludedActivityTypes = [
            UIActivityType.postToFacebook,
            UIActivityType.postToTwitter,
            UIActivityType.message,
            UIActivityType.saveToCameraRoll,
            UIActivityType.print
        ]
        
        activityVC.excludedActivityTypes = excludedActivityTypes
        
        // UIActivityViewControllerを表示
        self.present(activityVC, animated: true, completion: nil)
    }
}
