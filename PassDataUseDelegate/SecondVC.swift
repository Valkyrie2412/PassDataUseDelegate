//
//  SecondVC.swift
//  PassDataUseDelegate
//
//  Created by Hiếu Nguyễn on 7/18/18.
//  Copyright © 2018 Hiếu Nguyễn. All rights reserved.
//

import UIKit

protocol DataDelegate:class {
    func didFindDataNumbers(data: String)
    
}

class SecondVC: UIViewController {
    
    @IBOutlet weak var textField2: UITextField!
    weak var delegate: DataDelegate?
    var data: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let dataStr = data {
            textField2.text = dataStr
        }
    }
    

    @IBAction func sendingData(_ sender: Any) {
        // Neu textField2 bang nil thi app se crash
        // Phai kiem tra
        if textField2.text != nil {
            delegate?.didFindDataNumbers(data: textField2.text!)
        }
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

}
