//
//  carDetailsVC.swift
//  Car_Project
//
//  Created by ElAmir Mansour on 23/12/2022.
//

import UIKit

class carDetailsVC: UIViewController {
    //    MARK: iboutlets
    
    @IBOutlet weak var carDetail: UILabel!
    
    @IBOutlet weak var carDescription: UILabel!
    @IBOutlet weak var carImage: UIImageView!
    // MARK: Variables
    var car:String?
    var carDesc:String?
    var images:UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        carDetail.text = car
        carDescription.text = carDesc
        carImage.image = images
        
    }
    
    
    
}
