//
//  DBHelper.swift
//  demo2
//
//  Created by Owner on 2022-07-14.
//

import Foundation
import UIKit
import CoreData

class DBHelper{
    
    static var dbHelper = DBHelper()
    

    let context  = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    func addData(nameValue : String , courseName : String){
        let student  = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        student.name = nameValue
        student.course = courseName
        
                do {
                    try context?.save()
                    print("course saved ")
                }
                catch{
                    print("error in course")
                }
        
    }
    
   
    func getData() -> [Student] {
        
        var student = [Student]()
        
        var fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        do{
            student = try context?.fetch(fetchRequest) as! [Student]
        }
        catch {
            print("can not fetch data")
        }
        
    
        return student
    }
}
