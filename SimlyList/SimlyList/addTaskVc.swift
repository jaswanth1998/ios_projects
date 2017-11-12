//
//  addTaskVc.swift
//  SimlyList
//
//  Created by jaswanth tata on 08/11/17.
//  Copyright © 2017 jaswanth tata. All rights reserved.
//

import UIKit

class addTaskVc: UIViewController {
    @IBOutlet weak var textLabel: UITextField!
    
    @IBOutlet weak var swicthButton: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

 
    @IBAction func savePressed(_ sender: Any) {
        let guest = UIApplication.shared.delegate as! AppDelegate;
        let context = guest.persistentContainer.viewContext
        
        let task = Task(context: context)
        
        if let name = textLabel.text{
            task.name = name
        }
        task.smiley = swicthButton.isOn
        guest.saveContext()
        navigationController?.popViewController(animated: true)
    }
   
    
}
