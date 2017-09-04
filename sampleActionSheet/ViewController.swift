//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by Eriko Ichinohe on 2017/09/04.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Selectボタンが押された時発動
    @IBAction func tapSelect(_ sender: UIButton) {
        
        //アクションシートを作成
        let actionSheet = UIAlertController(title: "どのアクティビティにする？", message: "今日のアクティビティ", preferredStyle: .actionSheet)
        
        //アクティビティボタン1を追加
//        actionSheet.addAction(UIAlertAction(title: "ヨガ", style: .default, handler: {action in self.myLabel.text = "ヨガ、行こう！"}))
        actionSheet.addAction(UIAlertAction(title: "ヨガ", style: .default, handler: {action in self.Activity(name: "ヨガ")}))
        
        //アクティビティボタン2を追加
//        actionSheet.addAction(UIAlertAction(title: "バスケ", style: .default, handler: {action in self.myLabel.text = "バスケ、行こう！"}))
        actionSheet.addAction(UIAlertAction(title: "バスケ", style: .default, handler: {action in self.Activity(name: "バスケ")}))

        //削除ボタンを追加
        actionSheet.addAction(UIAlertAction(title: "ムエタイ", style: .destructive, handler: {action in self.myLabel.text = "ムエタイがんばろ！"}))
        
        //キャンセルボタンを追加
        actionSheet.addAction(UIAlertAction(title: "今日はやめとく", style: .cancel, handler: {action in self.myLabel.text = "明日は行こう！"}))
        
        //アクションシートを表示
        present(actionSheet,animated: true,completion: nil)
    }
    
    
    //アクティビティボタンが押されたら起動する自作関数
    //Activity 関数名
    //name 引数（ヨガとかバスケとかが呼び出されたところから代入される）
    func Activity(name:String){
        myLabel.text = "\(name)、行こう！"
    }
    
    //TODO:削除ボタンが押されたときに呼ばれる関数
    
    //TODO:キャンセルボタンが押されたときに呼ばれる関数

    //TODO:作った関数を呼び出すようにしたら、GithubにPushしましょう
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

