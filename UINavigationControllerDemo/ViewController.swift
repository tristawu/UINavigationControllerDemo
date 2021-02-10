//
//  ViewController.swift
//  UINavigationControllerDemo
//
//  Created by Trista on 2021/2/9.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //底色
        self.view.backgroundColor = UIColor.darkGray

        //導覽列標題
        self.title = "首頁"

        //導覽列底色
        self.navigationController?.navigationBar.barTintColor =
            UIColor.lightGray

        //導覽列是否半透明
        //需要在導覽列沒有設置底色時才有這個效果。
        //還影響到內部視圖的原點位置，true則原點與導覽列的原點一樣，都是整個畫面的左上角，false則內部視圖的原點則會被設在導覽列下方
        self.navigationController?.navigationBar.isTranslucent = false

        //導覽列左邊按鈕設置為一個圖片
        //設置導覽列按鈕是使用UIBarButtonItem()方法，而不是原始的UIButton()
        //navigation bar 上 button 的圖片最好是 24 * 24 ~ 28 * 28 points
        //withRenderingMode(.alwaysOriginal) 讓圖片顯示原本的顏色
        let leftButton = UIBarButtonItem(
            image: UIImage(named:"check")?.withRenderingMode(.alwaysOriginal),style:.plain ,
          target:self ,action: #selector(ViewController.check))
        //加到導覽列中
        self.navigationItem.leftBarButtonItem = leftButton
        
        
        //導覽列右邊按鈕設置為一個自定義文字
        //設置導覽列按鈕是使用UIBarButtonItem()方法，而不是原始的UIButton()
        let rightButton = UIBarButtonItem(
            title:"設定",style:.plain,
          target:self,action:#selector(ViewController.setting))
        //加到導覽列中
        self.navigationItem.rightBarButtonItem = rightButton

        
        //建立一個按鈕
        let myButton = UIButton(frame: CGRect(
          x: 0, y: 0, width: 120, height: 40))
        myButton.setTitle("Article", for: .normal)
        myButton.backgroundColor = UIColor.blue
        myButton.addTarget(
            self,
            action: #selector(ViewController.article),
            for: .touchUpInside)
        
        self.view.addSubview(myButton)
        
    }

    
    //導覽列按鈕執行動作的方法
    @objc func check() {
        print("check button action")
    }

    @objc func setting() {

        //UINavigationController切換頁面的方法為pushViewController()，參數分別為要前往的頁面的ViewController及是否要有過場動畫
        self.navigationController?.pushViewController(
          SettingViewController(), animated: true)
    }
    
    
    @objc func article() {
        
        //UINavigationController切換頁面的方法為pushViewController()，參數分別為要前往的頁面的ViewController及是否要有過場動畫
        self.navigationController?.pushViewController(
          ArticleViewController(), animated: true)
    }

}

