//
//  ARDebugButton.swift
//  Elasticity
//
//  Created by Orta Therox on 12/09/2015.
//  Copyright © 2015 Artsy. All rights reserved.
//

import UIKit

class ARDebugButton: UIButton {
    
    override func pressesBegan(presses: Set<UIPress>, withEvent event: UIPressesEvent?) {
        for item in presses {
            if item.type == UIPressType.Select {
                self.backgroundColor = UIColor.greenColor()
                print(item.force)
            }
        }
    }
    
    override func pressesEnded(presses: Set<UIPress>, withEvent event: UIPressesEvent?) {
        for item in presses {
            if item.type == UIPressType.Select {
                self.backgroundColor = UIColor.whiteColor()
            }
        }
    }
    
    override func pressesChanged(presses: Set<UIPress>, withEvent event: UIPressesEvent?) {
        for item in presses {
            if item.type == UIPressType.Select {
                self.backgroundColor = UIColor.blackColor()
                print(item.force)
            }
        }

    }
    
    override func pressesCancelled(presses: Set<UIPress>, withEvent event: UIPressesEvent?) {
        for item in presses {
            if item.type == UIPressType.Select {
                self.backgroundColor = UIColor.redColor()
            }
        }
    }

}
