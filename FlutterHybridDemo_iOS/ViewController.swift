//
//  ViewController.swift
//  FlutterHybridDemo_iOS
//
//  Created by 温一鸿 on 2019/8/15.
//  Copyright © 2019年 wyh. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine;
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)!;
        navigationController?.pushViewController(flutterViewController, animated: true)
    }
    
}

