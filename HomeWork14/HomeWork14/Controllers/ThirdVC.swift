//
//  ThirdVC.swift
//  HomeWork14
//
//  Created by  NovA on 21.08.23.
//

import UIKit

class ThirdVC: UIViewController {

    var dataString: String?
    
    @IBOutlet weak var labelText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.text = dataString
    }
    
    
    @IBAction func backAction(_ sender: UIButton) {
        // сделаем back используя NavVC
        // popViewController веруться к прошлому VC
        navigationController?.popViewController(animated: true)
        
        // popToRootViewController веруться к первому VC
        // navigationController?.popToRootViewController(animated: true)
        
        // popToViewController(VC) - вернутся к конкретному VC
        // navigationController?.popToViewController(UIViewController, animated: true)
    }

}
