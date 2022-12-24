//
//  ViewController.swift
//  Car_Project
//
//  Created by ElAmir Mansour on 23/12/2022.
//

import UIKit

class ViewController: UIViewController {
    
    //    MARK: - IBOUTLETS
    @IBOutlet weak var tableView: UITableView!
    
    //    MARK: - Variable
    var carModelArr = ["Mazzarati" , "Tesla","Toyota","Ferrari","Lambo","Mercedes"]
    var carModleImgArr = [UIImage(named: "Mazzarati"),UIImage(named: "Tesla"),UIImage(named: "Toyota"),UIImage(named: "Ferrari"),UIImage(named: "Lambo"),UIImage(named: "Mercedes")]
    
    //    MARK: - view life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configurateTableView()
    }
    //    MARK: -Functions
    func configurateTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CarCell", bundle: nil), forCellReuseIdentifier: CarCell.identifier)
    }
}
//MARK: -Extensions
extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carModelArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CarCell.identifier, for: indexPath) as! CarCell
        let name = carModelArr[indexPath.row]
        let images = carModleImgArr[indexPath.row]
        cell.set(name,images!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let carModel = carModelArr[indexPath.row]
        let vc = carDetailsVC()
        vc.car = carModel
        navigationController?.pushViewController(vc, animated: false)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}



