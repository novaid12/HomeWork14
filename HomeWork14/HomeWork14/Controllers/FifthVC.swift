//
//  FifthVC.swift
//  HomeWork14
//
//  Created by  NovA on 21.08.23.
//

import UIKit

class FifthVC: UIViewController {
    @IBOutlet var textLabel: UILabel!
    var dataString: String?
    weak var firstVC: FirstVC?
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = dataString

        // Do any additional setup after loading the view.
    }

    @IBAction func backAction(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }

    @IBAction func backToMainView(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}
