//
//  ViewController.swift
//  ElastiTV
//
//  Created by Orta on 9/11/15.
//  Copyright © 2015 Artsy. All rights reserved.
//

import UIKit
import TVServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().postNotificationName(TVTopShelfItemsDidChangeNotification, object: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func pressesBegan(presses: Set<UIPress>, withEvent event: UIPressesEvent?) {
        for item in presses {
            if item.type == UIPressType.Select {
                self.view.backgroundColor = UIColor.greenColor()
            }
        }
    }
    
    override func pressesEnded(presses: Set<UIPress>, withEvent event: UIPressesEvent?) {
        for item in presses {
            if item.type == UIPressType.Select {
                self.view.backgroundColor = UIColor.whiteColor()
            }
        }
    }
    
    override func pressesChanged(presses: Set<UIPress>, withEvent event: UIPressesEvent?) {
        // ignored
    }
    
    override func pressesCancelled(presses: Set<UIPress>, withEvent event: UIPressesEvent?) {
        for item in presses {
            if item.type == UIPressType.Select {
                self.view.backgroundColor = UIColor.whiteColor()
            }
        }
    }

}

