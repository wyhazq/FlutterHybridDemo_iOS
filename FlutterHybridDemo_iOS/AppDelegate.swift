//
//  AppDelegate.swift
//  FlutterHybridDemo_iOS
//
//  Created by 温一鸿 on 2019/8/15.
//  Copyright © 2019年 wyh. All rights reserved.
//

import UIKit
import Flutter
//import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

    var flutterEngine : FlutterEngine?


    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        flutterEngine = FlutterEngine(name: "io.flutter", project: nil)
        flutterEngine?.run(withEntrypoint: nil)
        GeneratedPluginRegistrant.register(with: flutterEngine)
        
        return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }

    override func applicationWillResignActive(_ application: UIApplication) {
        super.applicationWillResignActive(application)
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    override func applicationDidEnterBackground(_ application: UIApplication) {
        super.applicationDidEnterBackground(application)
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    override func applicationWillEnterForeground(_ application: UIApplication) {
        super.applicationWillEnterForeground(application)
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    override func applicationDidBecomeActive(_ application: UIApplication) {
        super.applicationDidBecomeActive(application)
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    override func applicationWillTerminate(_ application: UIApplication) {
        super.applicationWillTerminate(application)
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

