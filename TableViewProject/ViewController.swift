//
//  ViewController.swift
//  TableViewProject
//
//  Created by fab1zon on 2/12/20.
//  Copyright © 2020 Никита Березинский. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    private var elements: [Int] = []
    
    override func viewDidLoad() {
        
        for element in 1...100 {
            elements.append(element)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = String(elements[indexPath.row])
        return cell
    }
    
}

