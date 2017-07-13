//
//  OptionViewController.swift
//  presentation.2
//
//  Created by keniku_macbook on 2017/04/04.
//  Copyright © 2017年 keniku_macbook. All rights reserved.
//

import UIKit

class OptionViewController: UIViewController ,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var saves = UserDefaults.standard
    
    var colornumber:Int = 0
    
    var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = saves.object(forKey: "image") as? UIImage
        colornumber = saves.integer(forKey: "color")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func towhite () {
        colornumber = 3
       saves.set(colornumber, forKey: "color")
        
        // アラートを作成
        let alert = UIAlertController(
            title: "削除", message: "消去しました", preferredStyle: .alert)
        
        // アラートにボタンをつける
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: {action in
            self.dismiss(animated: true, completion: nil)}))
        
        // アラート表示
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func selectimage () {
        //UIImagePickerControllerのインスタンスを作る
        let imagePickerController: UIImagePickerController = UIImagePickerController()
        
        //フォトライブラリを使う設定をする
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        imagePickerController.allowsEditing = true
        imagePickerController.delegate = self
        
        //フォトライブラリを呼び出す
        self.present(imagePickerController, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let selectimage: UIImage =
            
            info[UIImagePickerControllerEditedImage] as! UIImage
        
        imageView.image = selectimage
        
        self.dismiss(animated: true, completion: nil)
        
        saves.set(imageView.image, forKey: "image")
        
    }


    }

//    @IBAction func tored () {
//        colornumber = 1
//        saves.set(colornumber, forKey: "color")
//    }
//    
//    @IBAction func togreen() {
//        colornumber = 2
//        saves.set(colornumber, forKey: "color")
//    }
//    
//    @IBAction func toblue () {
//        colornumber = 0
//        saves.set(colornumber, forKey: "color")
//    }
//    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


