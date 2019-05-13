//
//  ViewController.swift
//  colorQuizApp
//
//  Created by 石川佑樹 on 2019/05/13.
//  Copyright © 2019 石川佑樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorLabel: UILabel!
    
    //RGBの変数を入力します
    var colorR = 0
    var colorG = 0
    var colorB = 0
    
    
    //この画面が表示されるときと呼び出します
    override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    //0〜255のランダムな値を3つ作ります
    colorR = Int(arc4random() % 256)
    colorG = Int(arc4random() % 256)
    colorB = Int(arc4random() % 256)
    //3つの色を表示させます
    colorLabel.text = "R=\(colorR) ,G=\(colorG), B=\(colorB)"
    }
    
    //画面が切り替わるときに呼び出されます
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //切り替わり先の画面を変数に入れます
        let nextvc = segue.destination as! colorViewController
        //切り替わり先の変数にこの画面の変数に入れて受け渡しします
        nextvc.colorR = colorR
        nextvc.colorG = colorG
        nextvc.colorB = colorB
        
    }
    
    
    
    @IBAction func returnTop(segue: UIStoryboardSegue) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

