//
//  ViewController.swift
//  demo2
//
//  Created by Owner on 2022-07-14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var course: UITextField!
    
    
    
    @IBAction func viewData(_ sender: Any) {
        
        var data = DBHelper.dbHelper.getData()
         
         for d in data{
             print(d.name , d.course)
         }
    }
    
    
    @IBAction func saveData(_ sender: Any) {
        
        DBHelper.dbHelper.addData(nameValue: name.text!, courseName: course.text!)
    }
    
    
    
    
}

