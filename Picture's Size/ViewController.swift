//
//  ViewController.swift
//  Picture's Size
//
//  Created by Aaron Kuan on 2020/1/21.
//  Copyright © 2020 Aaron Kuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var stephenCurry: UIImageView!
    
    @IBAction func changeSize(_ sender: UISegmentedControl) {
        
        let originalCenter = stephenCurry.center
        stephenCurry.frame.size = CGSize(width: 200, height: 200)
        stephenCurry.center = originalCenter
        
        if sender.selectedSegmentIndex == 0 {
            stephenCurry.frame.size = CGSize( width: 300, height: 300)
            stephenCurry.center = originalCenter
        } else if sender.selectedSegmentIndex == 1 {
             stephenCurry.frame.size = CGSize( width: 300, height: 400)
             stephenCurry.center = originalCenter
        } else if sender.selectedSegmentIndex == 2 {
            stephenCurry.frame.size = CGSize( width:300 , height:300/16*9 )
            stephenCurry.center = originalCenter
        }
        
    }
    
}

