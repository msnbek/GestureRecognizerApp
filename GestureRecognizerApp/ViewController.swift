//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Mahmut Şenbek on 14.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelText: UILabel!
   
    @IBOutlet weak var imageWiew: UIImageView!
    
    var isFinch = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageWiew.isUserInteractionEnabled = true
        
        let gestureRecongnizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        imageWiew.addGestureRecognizer(gestureRecongnizer)
       
    }
    
    @objc func changeImage() {
        print("tapped")
        
        if isFinch == true {
            imageWiew.image = UIImage(named: "reese")
            labelText.text = "John Reese"
            isFinch = false
    }else {
        imageWiew.image = UIImage(named: "finch")
        labelText.text = " Harold Finch"
        isFinch = true
        
    }
}

}
