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
    
    @IBOutlet var redmemonumber:UILabel?
    @IBOutlet var greenmemonumber:UILabel?
    @IBOutlet var bluememonumber:UILabel?
    @IBOutlet var yellowmemonumber:UILabel?
    
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
            redmemonumber?.text = "0"
        }else{
            redmemonumber?.text = String(describing: saves.object(forKey: "rednumber")!)
        }
        
        if saves.object(forKey: "bluenumber") == nil {
            bluememonumber?.text = "0"
        }else{
            bluememonumber?.text = String(describing: saves.object(forKey: "bluenumber")!)

        }
        
        if saves.object(forKey: "greennumber") == nil {
            greenmemonumber?.text = "0"
        }else{
            greenmemonumber?.text = String(describing: saves.object(forKey: "greennumber")!)
        }
        
        if saves.object(forKey: "yellownumber") == nil {
            yellowmemonumber?.text = "0"
        }else{
            yellowmemonumber?.text = String(describing: saves.object(forKey: "yellownumber")!)
            
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
        TextSizeChanger(label: redmemonumber!)
        TextSizeChanger(label: bluememonumber!)
        TextSizeChanger(label: greenmemonumber!)
        TextSizeChanger(label: yellowmemonumber!)
        
    }
    
    func textColorChanger(label: UILabel){
        if Int(label.text!)! > 5 {
            label.textColor = UIColor.red
        }
    }

    func TextSizeChanger(label: UILabel) {
        print(label.text)
        if Int(label.text!)! <= 1 {
            label.font = UIFont(name: "Trebuchet MS", size: 50)
        }else if Int(label.text!)! == 2 {
            label.font = UIFont(name: "Trebuchet MS", size: 53)
        }else if Int(label.text!)! == 3 {
            label.font = UIFont(name: "Trebuchet MS", size: 55)
        }else if Int(label.text!)! == 4 {
            label.font = UIFont(name: "Trebuchet MS", size: 58)
        }else if Int(label.text!)! == 5 {
            label.font = UIFont(name: "Trebuchet MS", size: 60)
        }else if Int(label.text!)! == 6 {
            label.font = UIFont(name: "Trebuchet MS", size: 63)
        }else if Int(label.text!)! == 7 {
            label.font = UIFont(name: "Trebuchet MS", size: 65)
        }else if Int(label.text!)! == 8 {
            label.font = UIFont(name: "Trebuchet MS", size: 67)
        }else if Int(label.text!)! == 9 {
            label.font = UIFont(name: "Trebuchet MS", size: 70)
        }else{
            label.font = UIFont(name: "Trebuchet MS", size: 80)
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

