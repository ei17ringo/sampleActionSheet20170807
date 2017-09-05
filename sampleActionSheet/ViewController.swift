//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by Eriko Ichinohe on 2017/09/04.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit    //フレームワークの読み込み（UIKitという名前のフレームワークを読み込んでいる）フレームワーク=プログラムの塊

// UIViewController -> 画面を作るクラス
// ViewController -> UIViewControllerを継承して作る独自の画面クラス
class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    // 起動時に1回実行されるメソッド
    // override 継承元のクラスにあるメソッドをちょっとカスタマイズする時につける
    override func viewDidLoad() {
        // 継承元(UIViewController)のviewDidLoadの実行
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Selectボタンが押された時発動
    @IBAction func tapSelect(_ sender: UIButton) {
        
        //アクションシートを作成
        //UIAlertControllerクラスを使ったインスタンス化
        // actionSheet -> オブジェクト
        let actionSheet = UIAlertController(title: "どのアクティビティにする？", message: "今日のアクティビティ", preferredStyle: .actionSheet)
        
        //アクティビティボタン1を追加
//        actionSheet.addAction(UIAlertAction(title: "ヨガ", style: .default, handler: {action in self.myLabel.text = "ヨガ、行こう！"}))
        // addAction -> actionSheetオブジェクトのメソッド
        // actionSheet.xxxx -> プロパティ
        // actionSheet.yyyy() -> メソッド
        actionSheet.addAction(UIAlertAction(title: "ヨガ", style: .default, handler: {action in self.Activity(name: "ヨガ")}))
        
        //アクティビティボタン2を追加
//        actionSheet.addAction(UIAlertAction(title: "バスケ", style: .default, handler: {action in self.myLabel.text = "バスケ、行こう！"}))
        actionSheet.addAction(UIAlertAction(title: "バスケ", style: .default, handler: {action in self.Activity(name: "バスケ")}))

        //削除ボタンを追加
//        actionSheet.addAction(UIAlertAction(title: "ムエタイ", style: .destructive, handler: {action in self.myLabel.text = "ムエタイがんばろ！"}))
        actionSheet.addAction(UIAlertAction(title: "ムエタイ", style: .destructive, handler: {action in self.Destructive()}))
        
        //キャンセルボタンを追加
//        actionSheet.addAction(UIAlertAction(title: "今日はやめとく", style: .cancel, handler: {action in self.myLabel.text = "明日は行こう！"}))
        actionSheet.addAction(UIAlertAction(title: "今日はやめとく", style: .cancel, handler: {action in self.Cansel()}))
        
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
    func Destructive(){
        myLabel.text = "ムエタイがんばろ！"
    }
    
    //TODO:キャンセルボタンが押されたときに呼ばれる関数
    func Cansel(){
        myLabel.text = "明日は行こう！"
    }

    //TODO:作った関数を呼び出すようにしたら、GithubにPushしましょう
    
    //アプリが動いているデバイス(iPhoneとか)がメモリ不足を感知した時に発動するメソッド
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

