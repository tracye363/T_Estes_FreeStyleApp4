//
//  PinchViewController.swift
//  T_Estes_FreeStyleApp4
//
//  Created by Tracy Estes on 6/24/20.
//  Copyright © 2020 Tracy Estes. All rights reserved.
//

import UIKit

class PinchViewController: UIViewController {

    
    @IBOutlet weak var pinchImage: UIImageView!
    
    @IBOutlet weak var image2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pinchGesture(_ sender: UIPinchGestureRecognizer) {
        pinchImage.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
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
