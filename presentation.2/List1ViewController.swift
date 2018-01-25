//
//  List1ViewController.swift
//  presentation.2
//
//  Created by keniku_macbook on 2017/08/05.
//  Copyright © 2017年 keniku_macbook. All rights reserved.
//

import UIKit

class List1ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var table: UITableView!
    
    var memoNo = ""
    var zoomTransition:LCZoomTransition!
    
    var saves = UserDefaults.standard
    
    var titlenamearray:[String] = ["新規作成"]
    var memoarray:[String]  = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tblBackColor: UIColor = UIColor.clear
        table.backgroundColor = tblBackColor
        
        // Do any additional setup after loading the view.
        table.dataSource = self
        table.delegate = self
        
        //背景
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.7)
        //アイテム
        self.navigationController?.navigationBar.tintColor = UIColor.black
        
        //NavigationControllerにLCZoomTransitionの設定をする
        zoomTransition = LCZoomTransition(navigationController: self.navigationController)
    }
    //データの更新
    override func viewWillAppear(_ animated: Bool){
        super.viewDidDisappear(animated)
        table.reloadData()
        
        if  saves.object(forKey: "titlearray1") as? [String] != nil{
            titlenamearray = saves.object(forKey: "titlearray1") as! [String]
            //            titlenamearray.insert("新規作成", at: 0)
        }else{
            titlenamearray = ["新規作成"]
            saves.set(titlenamearray, forKey: "titlearray1")
            memoarray = [""]
            saves.set(memoarray, forKey: "memo1")
        }
        
        saves.set(titlenamearray.count - 1, forKey: "yellownumber")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //セルの総数を設定するメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlenamearray.count
    }
    
    //セルの値を設定するメソッド
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        //Cellのフォント
        cell.textLabel!.font = UIFont(name: "Noto Sans CJK JP Bold", size: 20)
        //cellのタイトル
        cell.textLabel!.text = titlenamearray[indexPath.row]
        
        return cell
    }
    
    
    //セルがタップされた時に呼び出されるメソッド
    
    func tableView(_ didSelectRowAttableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.memoNo = String(indexPath.row)
        self.performSegue(withIdentifier: "toCreate1", sender: nil)
    }
    
//    @IBAction func memoplus () {
//        memoNo = ""
//        performSegue(withIdentifier: "toCreate1", sender: self)
//    }
    
    // Segueを設定
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCreate1" {
            let subVC: Create1ViewController = (segue.destination as? Create1ViewController)!
            subVC.memoNo = self.memoNo
            //遷移で戻ってくる場所の記録のための設定
            zoomTransition.sourceView = self.table.cellForRow(at: table.indexPathForSelectedRow!)
        }
    }
    
    @IBAction func back () {
        self.dismiss(animated: true, completion: nil)
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
