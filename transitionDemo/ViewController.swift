//
//  ViewController.swift
//  transitionDemo
//
//  Created by student on 2018/11/21.
//  Copyright © 2018年 wenjun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func changeBgColor(_ sender: Any) {
        UIView.transition(with: myView, duration: 2, options: .transitionCurlUp, animations: {
            if(self.myView.backgroundColor != UIColor.blue){
                self.myView.backgroundColor=UIColor.blue
            }else{
                self.myView.backgroundColor=UIColor.yellow
            }
        }, completion: nil)
    }

    @IBAction func changeView(_ sender: Any) {
        var imageView=UIImageView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        imageView.image=UIImage(named: "1")
        UIView.transition(from: myView, to: imageView, duration: 2, options: .transitionFlipFromLeft, completion: nil)
    }
}

