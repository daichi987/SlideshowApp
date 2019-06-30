//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Mika on 2019/06/30.
//  Copyright © 2019 daichi987. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var currentShow: Int = 0
    let images = [UIImage(named: "image1.jpeg"), UIImage(named: "image2.jpg"), UIImage(named: "image3.jpeg")]

    var timer: Timer!
    var timer_sec: Int = 0
    @IBOutlet weak var backImageEnabled: UIButton!
    @IBOutlet weak var proceedImageEnabled: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        imageView.image = images[currentShow]
    }
    
    @IBAction func backImage(_ sender: Any) {
        if currentShow == 0 {
            currentShow = 2
            imageView.image = images[currentShow]
        } else {
            currentShow -= 1
            imageView.image = images[currentShow]
        }
    }
    
    @IBAction func proceedImage(_ sender: Any) {
        if currentShow == 2 {
            currentShow = 0
            imageView.image = images[currentShow]
        } else {
            currentShow += 1
            imageView.image = images[currentShow]
        }
    }
    
    @IBAction func autoShow(_ sender: UIButton) {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(proceedImage(_:)), userInfo: nil, repeats: true)
            sender.setTitle("停止", for: .normal)
            backImageEnabled.isEnabled = false
            proceedImageEnabled.isEnabled = false
        } else {
            self.timer.invalidate()
            self.timer = nil
            sender.setTitle("再生", for: .normal)
            backImageEnabled.isEnabled = true
            proceedImageEnabled.isEnabled = true
        }
    }
}

