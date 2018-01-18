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
        
        for i in 1...4{
            makeBackGroundView(num: i)
        }
        
        
                
        
    }
    

    func makeBackGroundView(num:Int){
        
        let spaceY:CGFloat = 50.0
        
        let viewWidth = UIScreen.main.bounds.width / 2
        let viewHeight = UIScreen.main.bounds.height / 2
        

        var imageView:UIImageView = UIImageView()
        
        switch num {
        case 1:
            imageView.image = UIImage(named: "黄色")
            imageView.frame = CGRect(x: 0, y: spaceY, width: viewWidth, height: viewHeight - spaceY)
        case 2:
            imageView.image = UIImage(named: "赤")
            imageView.frame = CGRect(x: viewWidth, y: spaceY, width: viewWidth, height: viewHeight-spaceY)
        case 3:
            imageView.image = UIImage(named: "青")
            imageView.frame = CGRect(x: 0, y: viewHeight, width: viewWidth, height: viewHeight-spaceY)
        case 4:
            imageView.image = UIImage(named: "緑")
            imageView.frame = CGRect(x: viewWidth, y: viewHeight, width: viewWidth, height: viewHeight-spaceY)
        default:
            break
        }
        view.addSubview(imageView)

    }
    
    func makeArrow(){
        
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

}
