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
}

