//
//  OptionViewController.swift
//  presentation.2
//
//  Created by keniku_macbook on 2017/04/04.
//  Copyright © 2017年 keniku_macbook. All rights reserved.
//

import UIKit

class OptionViewController: UIViewController {
    
    var saves = UserDefaults.standard
    
    var colornumber:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        colornumber = saves.integer(forKey: "color")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func towhite () {
        colornumber = 0
        saves.
    }
    
    @IBAction func tored () {
        colornumber = 1
    }
    
    @IBAction func togreen() {
        colornumber = 2
    }
    
    @IBAction func toblue () {
        colornumber = 3
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
