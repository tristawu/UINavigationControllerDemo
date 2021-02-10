//
//  SceneDelegate.swift
//  UINavigationControllerDemo
//
//  Created by Trista on 2021/2/9.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        
        //guard let _ = (scene as? UIWindowScene) else { return }
        if let windowScene = (scene as? UIWindowScene) {
            
            //建立一個 UIWindow ，用來顯示應用程式所有畫面的視窗
            //iOS下只會有一個視窗，就是self.window
            self.window = UIWindow(windowScene: windowScene)
                               
            //設置底色
            self.window!.backgroundColor = UIColor.white
            
            //設置rootViewController，也就是應用程式啟動後進到的第一個View
            //UINavigationController只是一個容器，也需要設置一個rootViewController，所以設置成已經存在的ViewController，也可以依照需求設置成自己另外建立的 UIViewController
            let nav = UINavigationController(rootViewController: ViewController())
            //將self.window的rootViewController設為UINavigationController
            self.window!.rootViewController = nav
        
            //將 UIWindow 以makeKeyAndVisible()方法設置為可見的，完成手動建立頁面
            self.window!.makeKeyAndVisible()
            
        }

    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

