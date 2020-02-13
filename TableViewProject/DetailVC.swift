//
//  DetailVC.swift
//  TableViewProject
//
//  Created by fab1zon on 2/13/20.
//  Copyright © 2020 Никита Березинский. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    @IBOutlet weak var detailDescription: UITextView?
    var a = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        detailDescription?.text = a
        // Do any additional setup after loading the view.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
