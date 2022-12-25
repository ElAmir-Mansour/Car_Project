//
//  ViewController.swift
//  Car_Project
//
//  Created by ElAmir Mansour on 23/12/2022.
//

import UIKit

class ViewController: UIViewController {
    
    //    MARK: - Variable
    var carModel: [Cars_Models] = []
    
    //    MARK: - IBOUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    //    MARK: - view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateTableView()
        appedCarData()
    }
    
    //    MARK: -Functions
    
    func configurateTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CarCell", bundle: nil), forCellReuseIdentifier: CarCell.identifier)
    }
    
    func appedCarData(){
        carModel.append(.init(carModel: "Mazzarati", carImg: "MA",carDescription: "As Fast as a plane can be"))
        carModel.append(.init(carModel: "Mercedes", carImg: "Mercedes",carDescription: "The germans are beasts"))
        carModel.append(.init(carModel: "Toyota", carImg: "Toyota",carDescription: "Toyota and japanese are :D"))
        carModel.append(.init(carModel: "Lambo", carImg: "Lambo",carDescription: "Lambo and who else but yellow"))
        carModel.append(.init(carModel: "Ferrari", carImg: "Ferrari",carDescription: "The kids dream car lol"))
        carModel.append(.init(carModel: "Tesla", carImg: "Tesla",carDescription: "Tesla guy owns twitter "))

    }
}

//MARK: -Extensions

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarCell.identifier, for: indexPath) as! CarCell
        let model = carModel[indexPath.row]
        cell.set(model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let carModel = carModel[indexPath.row]
        let vc = carDetailsVC()
        vc.car = carModel.carModel
        navigationController?.pushViewController(vc, animated: false)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}



