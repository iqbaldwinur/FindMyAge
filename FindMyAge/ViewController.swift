//
//  ViewController.swift
//  FindMyAge
//
//  Created by Iqbal Dwi Nur Khoirul anam on 24/10/18.
//  Copyright © 2018 iqbal project. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var laShowAge: UILabel!
    
    @IBOutlet weak var txtYearOfBirth: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func BuFinDage(_ sender: Any) {
        
        GetAge()
        
    }
    
    func GetAge(){
        // fire click ofbutton
        let YearOfBirth = Int(txtYearOfBirth.text!)
        //get current year
        let date = Date ()
        let calender = Calendar.current
        let year = calender.component(.year, from: date)
        
        let personAge = year - YearOfBirth!
        laShowAge.text = "Umur Kamu Sekarang \(personAge)"
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField:
        UITextField) -> Bool {
        
        // fire some click of retunr keyboard
        GetAge()
        self.view.endEditing(true)
        return true
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

