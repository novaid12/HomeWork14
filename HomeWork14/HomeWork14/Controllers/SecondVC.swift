//
//  SecondVC.swift
//  HomeWork14
//
//  Created by  NovA on 21.08.23.
//

import UIKit

class SecondVC: UIViewController {
    @IBOutlet var lblText: UILabel!

    weak var firstVC: FirstVC?

    var dataString: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        lblText.text = dataString
        // Do any additional setup after loading the view.
    }

    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: true)
    }
 
}
