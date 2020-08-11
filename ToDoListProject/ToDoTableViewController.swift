//
//  ToDoTableViewController.swift
//  ToDoListProject
//
//  Created by kristy awesome pants martinez on 8/10/20.
//  Copyright © 2020 kristy martinez. All rights reserved.
//

import UIKit

var listOfToDo : [ToDoClass] = []

class ToDoTableViewController: UITableViewController {
    
    func createToDo() -> [ToDoClass] {

         let swiftToDo = ToDoClass()
         swiftToDo.description = "Learn Swift"
         swiftToDo.important = true

         let dogToDo = ToDoClass()
         dogToDo.description = "Walk the Dog"
         // important is set to false by default

         return [swiftToDo, dogToDo]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listOfToDo = createToDo()
        }


      

    // MARK: - Table view data source

 
 

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let eachToDo = listOfToDo[indexPath.row]

      if eachToDo.important {
        cell.textLabel?.text = "❗️" + eachToDo.description
      } else {
        cell.textLabel?.text = eachToDo.description
      }

      return cell
    }



   

  


    


    


    // In a storyboard-based application, you will often want to do a little preparation before navigation
   // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
  
   
}
