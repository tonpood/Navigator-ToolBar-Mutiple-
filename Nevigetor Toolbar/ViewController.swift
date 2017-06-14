//
//  ViewController.swift
//  Nevigetor Toolbar
//
//  Created by Student11 on 6/14/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //implicit
    var intnumber = 1
    
    
    
    
    @IBAction func increaseNumber(_ sender: Any) {
        showMessage(strMessage: "Clivk increaseNumber")
        intnumber += 1
        if intnumber >= 10 {
            intnumber = -10
        }
        shownumber(intnumber: intnumber)
    
    }
    
    @IBAction func decreaseNumber(_ sender: Any) {
        showMessage(strMessage: "Clivk DecreaseNumber")
        intnumber -= 1
        shownumber(intnumber: intnumber)
    }
    
    @IBAction func ResetNumber(_ sender: Any) {
        showMessage(strMessage: "Clivk ResetNumber")
        intnumber = 1
        shownumber(intnumber: intnumber)
    }
    
    @IBAction func ReplyNumber(_ sender: Any) {
        showMessage(strMessage: "Clivk RePlyNumber")
    }
    
    @IBAction func TrashNumber(_ sender: Any) {
        showMessage(strMessage: "Clivk TrashNumber")
    }
    
    @IBOutlet weak var NumberLabel: UILabel!
    
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    } //Main Method
    
    
    func showMessage(strMessage: String) -> Void {
        print("Message ==> \(strMessage)")
    }

    
    func shownumber(intnumber: Int) -> Void {
        let strnumber = String(intnumber)
        NumberLabel.text = strnumber
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

