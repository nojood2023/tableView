//
//  ViewController.swift
//  tableView
//
//  Created by Nojood Aljuaid  on 11/06/1445 AH.
//

import UIKit

class ViewController: UIViewController{
    
    var cities = [Cities(name: "الرياض"),
                  Cities(name: "جدة"),
                  Cities(name: "الطائف"),
                  Cities(name: "الدمام")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        myViewTable.dataSource = self
    }
    @IBOutlet weak var myViewTable: UITableView!
}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = UITableViewCell()
        let city = cities[indexPath.row]
        cell.textLabel?.text = city.name
        cell.textLabel?.textColor = city.textColor
        cell.backgroundColor = city.backgroundColor
        
        return cell
    }}
