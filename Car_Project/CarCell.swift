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
    static  let identifier = "car_cell"
    
    func set(_ name: String ) {
            carModelCell.text = name
                         
        }
    
}
