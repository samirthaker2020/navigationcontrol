//
//  ViewController.swift
//  navigation
//
//  Created by Owner on 2019-03-15.
//  Copyright © 2019 Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   var no:String?
    @IBOutlet weak var txtdyanamic: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnpresent(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let lionVC = sb.instantiateViewController(withIdentifier: "nextpage1") as! NExtpage1ViewController
        
        self.present(lionVC, animated: true)
    }
    
    @IBAction func btnpushnav(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let studentDetailsVC = sb.instantiateViewController(withIdentifier: "nextpage2") as! NExtpage2ViewController
        
        self.navigationController?.pushViewController(studentDetailsVC, animated: true)
    }
    
    @IBAction func btndayanamic(_ sender: UIButton) {
        
     
        no=txtdyanamic.text
        print(no!)
        if(no=="1")
        {
            self.performSegue(withIdentifier: "nx1", sender: nil)
        }
        else
        {
            self.performSegue(withIdentifier: "nx2", sender: nil)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nx1"
        {
            if let destinationVC = segue.destination as? NExtpage1ViewController {
               destinationVC.x=no
            }
        }
        if segue.identifier == "nx2"
        {
            if let destinationVC = segue.destination as? NExtpage2ViewController {
                 destinationVC.x=no
            }
        }
    }
}

