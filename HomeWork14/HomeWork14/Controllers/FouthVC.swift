//
//  FouthVC.swift
//  HomeWork14
//
//  Created by  NovA on 21.08.23.
//

import UIKit

class FouthVC: UIViewController {
    var dataString: String?
    var result: Int = 0
    var a: Int = Int.random(in: 1...100)
    var b: Int = Int.random(in: 1...100)
    @IBOutlet var labelText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        result = a + b
        labelText.text = String(result)
        
    }

    @IBAction func backAction(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindToFirstVC", sender: nil)
    }
}
