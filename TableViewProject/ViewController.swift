//
//  ViewController.swift
//  TableViewProject
//
//  Created by fab1zon on 2/12/20.
//  Copyright © 2020 Никита Березинский. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    
    private var elements = ["git",
                            "MVC",
                            "UITableview"]
    
    var detailDescriptionArray = ["git description","MVC description","UITableView description"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
       }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text =
            String("№ \(indexPath.row + 1) " + (elements[indexPath.row]))
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetail", let destination = segue.destination as? DetailVC, let indexPath = tableView.indexPathForSelectedRow {
            destination.navigationItem.title = elements[indexPath.row]
            destination.a = detailDescriptionArray[indexPath.row]
        }
    }
}

