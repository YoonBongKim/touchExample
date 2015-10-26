//
//  ViewController.swift
//  touchExample
//
//  Created by KimYoonBong on 2015. 10. 23..
//  Copyright © 2015년 y8k. All rights reserved.
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
    
    @IBAction func closePresentedShortCutViewController(segue: UIStoryboardSegue)   {
        print("dismissed presented short cut view controller..")
    }

    @IBAction func doLoginOut(sender: UIButton) {
        sender.selected = !sender.selected
        
        NSUserDefaults.standardUserDefaults().setBool(sender.selected, forKey: "login_status")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        guard let delegate = UIApplication.sharedApplication().delegate as? AppDelegate else    {
            return
        }
        
        delegate.arrangeDynamicShortCutItem(sender.selected)
    }
}

