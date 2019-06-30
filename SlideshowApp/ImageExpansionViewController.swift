//
//  ImageExpansionViewController.swift
//  SlideshowApp
//
//  Created by Mika on 2019/06/30.
//  Copyright © 2019 daichi987. All rights reserved.
//

import UIKit

class ImageExpansionViewController: UIViewController {

    @IBOutlet weak var showImage: UIImageView!
    var imageNum: Int = 0
    let images = [UIImage(named: "image1.jpeg"), UIImage(named: "image2.jpg"), UIImage(named: "image3.jpeg")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showImage.image = images[imageNum]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
