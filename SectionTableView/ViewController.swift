//
//  ViewController.swift
//  SubtitleTableView
//
//  Created by Priya Patel on 26/12/19.
//  Copyright © 2019 priya. All rights reserved.
//

import UIKit

class ViewController: UIViewController  , UITableViewDelegate , UITableViewDataSource{
     
    var section = ["Title1" , "Title2"]
    
    var arr1 = ["Priya" , "Fairy"]
    
    var arr2 = ["Kajal" , "Qury"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return section.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.section[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch (section) {
        case 0:
            return arr1.count
        case 1:
            return arr2.count
        default:
            return 1
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Mycell", for: indexPath)
        
        switch (indexPath.section) {
        case 0:
            cell.textLabel?.text = arr1[indexPath.row]
        case 1:
            cell.textLabel?.text = arr2[indexPath.row]
        default:
            return cell
        }
        
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

