//
//  ViewController.swift
//  presentation.2
//
//  Created by keniku_macbook on 2017/04/03.
//  Copyright © 2017年 keniku_macbook. All rights reserved.
//

import UIKit
//import LCZoomTransition

class ViewController: UIViewController {
    
    var saves = UserDefaults.standard
//    var zoomTransition:LCZoomTransition!
    
    @IBOutlet var label1:UILabel?
    @IBOutlet var label2:UILabel?
    @IBOutlet var label3:UILabel?
    @IBOutlet var label4:UILabel?
    
    @IBOutlet var redmemonumber:UIButton!
    @IBOutlet var greenmemonumber:UIButton!
    @IBOutlet var bluememonumber:UIButton!
    @IBOutlet var yellowmemonumber:UIButton!
    
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        label1.text = saves.object(forKey: "label1") as? String
//        label2.text = saves.object(forKey: "label2") as? String
//        label3.text = saves.object(forKey: "label3") as? String
//        label4.text = saves.object(forKey: "label4") as? String
//        saves.set(rnumber, forKey: "rednumber")
//        saves.set(bnumber, forKey: "bluenumber")
//        saves.set(gnumber, forKey: "greennumber")
//        saves.set(ynumber, forKey: "yellownumber")

        
//        saves.object(forKey: "rednumber")
        
//        saves.set(1, forKey: "rednumber")
//        (forKey: "rednumber")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //データの更新
    override func viewWillAppear(_ animated: Bool){
        super.viewDidDisappear(animated)
        label1?.text = saves.object(forKey: "label1") as? String
        label2?.text = saves.object(forKey: "label2") as? String
        label3?.text = saves.object(forKey: "label3") as? String
        label4?.text = saves.object(forKey: "label4") as? String
        
        if saves.object(forKey: "label1") == nil {
            label1?.text = "難しい"
        }else{
            label1?.text = String(describing: saves.object(forKey: "label1")!)
        }
        
        if saves.object(forKey: "label2") == nil {
            label2?.text = "重要"
        }else{
            label2?.text = String(describing: saves.object(forKey: "label2")!)
        }
        
        if saves.object(forKey: "label3") == nil {
            label3?.text = "簡単"
        }else{
            label3?.text = String(describing: saves.object(forKey: "label3")!)
        }
        
        if saves.object(forKey: "label4") == nil {
            label4?.text = "重要でない"
        }else{
            label4?.text = String(describing: saves.object(forKey: "label4")!)
        }
        
        if saves.object(forKey: "rednumber") == nil {
            redmemonumber.setTitle("0", for: .normal)

        }else{
            redmemonumber.setTitle(String(describing: saves.object(forKey: "rednumber")!), for: .normal)
        }
        
        if saves.object(forKey: "bluenumber") == nil {
            bluememonumber?.setTitle("0", for: .normal)
        }else{
            bluememonumber?.setTitle(String(describing: saves.object(forKey: "bluenumber")!), for: .normal)
        }
        
        if saves.object(forKey: "greennumber") == nil {
            greenmemonumber?.setTitle("0", for: .normal)
        }else{
            greenmemonumber?.setTitle(String(describing: saves.object(forKey: "greennumber")!), for: .normal)
        }
        
        if saves.object(forKey: "yellownumber") == nil {
            yellowmemonumber?.setTitle("0", for: .normal)
        }else{
            yellowmemonumber?.setTitle(String(describing: saves.object(forKey: "yellownumber")!), for: .normal)
        }
        
//        textColorChanger(label: redmemonumber!)
//        textColorChanger(label: bluememonumber!)
//        textColorChanger(label: greenmemonumber!)
//        textColorChanger(label: yellowmemonumber!)
        
//        TextSizeChanger(label: redmemonumber!)
//        TextSizeChanger(label: bluememonumber!)
//        TextSizeChanger(label: greenmemonumber!)
//        TextSizeChanger(label: yellowmemonumber!)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        redmemonumber.titleLabel?.text = "1"
        TextSizeChanger(label: redmemonumber.titleLabel!)
        TextSizeChanger(label: bluememonumber.titleLabel!)
        TextSizeChanger(label: greenmemonumber.titleLabel!)
        TextSizeChanger(label: yellowmemonumber.titleLabel!)
    }
    func textColorChanger(label: UILabel){
        if Int(label.text!)! > 5 {
            label.textColor = UIColor.red
        }
    }

    func TextSizeChanger(label: UILabel) {
    print(label.text)
        if Int(label.text!)! <= 1 {
            label.font = UIFont(name: "Hiragino Mincho ProN", size: 60)
        }else if Int(label.text!)! == 2 {
            label.font = UIFont(name: "Hiragino Mincho ProN", size: 65)
        }else if Int(label.text!)! == 3 {
            label.font = UIFont(name: "Hiragino Mincho ProN", size: 70)
        }else if Int(label.text!)! == 4 {
            label.font = UIFont(name: "THiragino Mincho ProN", size: 75)
        }else if Int(label.text!)! == 5 {
            label.font = UIFont(name: "Hiragino Mincho ProN", size: 80)
        }else if Int(label.text!)! == 6 {
            label.font = UIFont(name: "Hiragino Mincho ProN", size: 85)
        }else if Int(label.text!)! == 7 {
            label.font = UIFont(name: "Hiragino Mincho ProN", size: 87)
        }else if Int(label.text!)! == 8 {
            label.font = UIFont(name: "Hiragino Mincho ProN", size: 90)
        }else if Int(label.text!)! == 9 {
            label.font = UIFont(name: "Hiragino Mincho ProN", size: 93)
        }else{
            label.font = UIFont(name: "Hiragino Mincho ProN", size: 96)
        }
    }
    
    @IBAction func setting () {
        performSegue(withIdentifier: "toSet", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCreate" {
        }
    }
}

