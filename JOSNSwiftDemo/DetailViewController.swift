//
//  DetailViewController.swift
//  JSONDemo
//
//  Created by Jose Bustos H on 23/5/15.
//  Copyright © 2015 Jose Bustos H. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
   
    //current controller IBOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dobLabel: UILabel!

    //data from previous controller
    var nameString:String!
    var dobString:String!
    var imageString:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateUI() {
        self.nameLabel.text = nameString
        self.dobLabel.text = dobString
        
        let imgURL = URL(string:imageString)
        
        let data = NSData(contentsOf: (imgURL)!)
        self.imageView.image = UIImage(data: data as! Data)
    }
}
