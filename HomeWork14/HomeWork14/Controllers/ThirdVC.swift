//
//  ThirdVC.swift
//  HomeWork14
//
//  Created by  NovA on 21.08.23.
//

import UIKit

class ThirdVC: UIViewController {
    var dataString: String?

    @IBOutlet var labelText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        labelText.text = dataString
    }

    @IBAction func nextAction(_ sender: UIButton) {
        let vc = FifthVC(nibName: "FifthVC", bundle: nil)
        vc.dataString = "Hello from ThirdVC"
        vc.navigationItem.title = "XIB VC"
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func backAction(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
