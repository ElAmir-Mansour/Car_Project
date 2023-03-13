//
//  CarCell.swift
//  Car_Project
//
//  Created by ElAmir Mansour on 23/12/2022.
//

// variables -> iboutlets - > view life cycle - > ib action - > functions - > extensions

import UIKit

class CarCell: UITableViewCell {
    
    @IBOutlet weak var carImage: UIImageView!
    @IBOutlet weak var carModelCell: UILabel!
    @IBOutlet weak var carDescription: UILabel!
    static  let identifier = "car_cell"
    
    func set(_ model:Cars_Models) {
        carModelCell.text = model.carModel
        carDescription.text = model.carDescription
        let image = UIImage(named: model.carImg)
        carImage.image = image
    }

    // just a test another
    // test
    
}
