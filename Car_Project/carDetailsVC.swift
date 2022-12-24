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
    
    // MARK: Variables
    var car:String?
    var images:[UIImage]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        carDetail.text = car
        
    }
    
    
    
}
