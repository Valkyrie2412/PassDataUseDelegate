//
//  FirstVC.swift
//  PassDataUseDelegate
//
//  Created by Hiếu Nguyễn on 7/18/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, DataDelegate {
    func didFindDataNumbers(data: String) {
        textField1.text = data
    }
    
    @IBOutlet weak var textField1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? SecondVC {
            detailViewController.delegate = self
            detailViewController.data = textField1.text
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
    

    
}
