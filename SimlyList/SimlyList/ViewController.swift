//
//  ViewController.swift
//  SimlyList
//
//  Created by jaswanth tata on 08/11/17.
//  Copyright © 2017 jaswanth tata. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var tasks : [Task] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        garpData()
        print("sucess")
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task =  tasks[indexPath.row]
        cell.textLabel?.text = "\(String(describing :task.name))"
        return cell
    }
    func garpData(){
        let guest = UIApplication.shared.delegate as! AppDelegate
        let context = guest.persistentContainer.viewContext
        
        do {
            tasks = try context.fetch(Task.fetchRequest())
        }catch{
            print("filed to fetch ")
        }
    }
    
   

}

