//
//  ViewController.swift
//  HomeWork14
//
//  Created by  NovA on 21.08.23.
//

import UIKit

class FirstVC: UIViewController {
    @IBOutlet var labelText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToNextView(_ sender: UIButton) {
        performSegue(withIdentifier: "goToNextView", sender: "Hello from FirstVC")
    }
    
    @IBAction func goToThirdVC(_ sender: UIButton) {
        let vc = ThirdVC(nibName: "ThirdVC", bundle: nil)
        vc.dataString = "Hello from FirstVC"
        /// pushViewController
        vc.navigationItem.title = "XIB VC"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func goToFourViewUnwind() {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: nil)
        guard let fouthVC = storyboard.instantiateViewController(withIdentifier: "FouthVC") as? FouthVC else { return }
        fouthVC.navigationItem.title = "Fouth VC"
        fouthVC.dataString = "Hello from FirstVC"
        present(fouthVC, animated: true)
    }

    
    @IBAction func unwindToFirstVC(_ unwindSegue: UIStoryboardSegue) {
        if let fouthVC = unwindSegue.source as? FouthVC {
            labelText.text = fouthVC.dataString
            labelText.text = String(fouthVC.result)
        }
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNextView",
           let secondVC = segue.destination as? SecondVC,
           let dataString = sender as? String
        {
            secondVC.dataString = dataString
            secondVC.firstVC = self
        } else if segue.identifier == "goToFouthVC",
                  let fouthVC = segue.destination as? FouthVC
        {
            fouthVC.dataString = "Hello from FirstVC"
        }
    }
}
