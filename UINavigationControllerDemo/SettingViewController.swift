//
//  SettingViewController.swift
//  UINavigationControllerDemo
//
//  Created by Trista on 2021/2/9.
//

import UIKit

//選擇iOS > Source > Cocoa Touch Class這個模版的檔案，繼承自UIViewController的子類別，新增SettingViewController
class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //底色
        self.view.backgroundColor = UIColor.black

        //導覽列標題
        self.title = "Setting"

        //導覽列底色
        self.navigationController?.navigationBar.barTintColor =
            UIColor.white

        //導覽列是否半透明
        //需要在導覽列沒有設置底色時才有這個效果。
        //還影響到內部視圖的原點位置，true則原點與導覽列的原點一樣，都是整個畫面的左上角，false則內部視圖的原點則會被設在導覽列下方
        self.navigationController?.navigationBar.isTranslucent = false

        
        //導覽列右邊按鈕設置為自定義的 UIView 來代替按鈕
        let myUIView = UIView(frame: CGRect(
          x: 0, y: 0, width: 30, height: 30))
        myUIView.backgroundColor = UIColor.purple
        let rightButton = UIBarButtonItem(customView: myUIView)
        //加到導覽列中
        self.navigationItem.rightBarButtonItem = rightButton

        
        //因為ViewController 有設置UINavigationController切換頁面前往SettingViewController
        //所以SettingViewController導覽列左邊按鈕已經預設為回前頁的按鈕,也可以再自行設定回前頁的功能
        //建立一個自定義的按鈕，設置回前頁
        let myButton = UIButton(frame: CGRect(
          x: 0, y: 0, width: 120, height: 40))
        myButton.setTitle("回前頁", for: .normal)
        myButton.backgroundColor = UIColor.blue
        myButton.addTarget(
            self,
            action: #selector(SettingViewController.back),
            for: .touchUpInside)
        
        self.view.addSubview(myButton)
        
    }
    

    //導覽控制器返回頁面的方法為 popViewController() animated參數為是否要有過場動畫
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
