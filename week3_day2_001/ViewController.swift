//
//  ViewController.swift
//  week3_day2_001
//
//  Created by Shinya Hirai on 2015/10/20.
//  Copyright (c) 2015年 Shinya Hirai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapBtn(sender: AnyObject) {
        // 自分のアプリの説明分
        let textToShare = "シェアしたいテキストデータ"
        
        // 自分のアプリのApp Store URL
        if let appUrl = NSURL(string: "http://www.apple.com/")
        {
            let objectsToShare = [textToShare, appUrl]
            
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            
            self.presentViewController(activityVC, animated: true, completion: nil)
        }
    }

}

