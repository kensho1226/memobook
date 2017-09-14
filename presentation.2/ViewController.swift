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
    var zoomTransition:LCZoomTransition!
    
    @IBOutlet var label1:UILabel!
    @IBOutlet var label2:UILabel!
    @IBOutlet var label3:UILabel!
    @IBOutlet var label4:UILabel!
    
    @IBOutlet var redmemonumber:UILabel!
    @IBOutlet var greenmemonumber:UILabel!
    @IBOutlet var bluememonumber:UILabel!
    @IBOutlet var yellowmemonumber:UILabel!
    
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
        label1.text = saves.object(forKey: "label1") as? String
        label2.text = saves.object(forKey: "label2") as? String
        label3.text = saves.object(forKey: "label3") as? String
        label4.text = saves.object(forKey: "label4") as? String
        
        redmemonumber = saves.object(forKey: "rednumber") as! UILabel
        bluememonumber = saves.object(forKey: "bluenumber") as! UILabel
        greenmemonumber = saves.object(forKey: "greennumber") as! UILabel
        yellowmemonumber = saves.object(forKey: "yellownumber") as! UILabel
    }
    
    @IBAction func setting () {
        performSegue(withIdentifier: "toSet", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCreate" {
        }
    }



}

