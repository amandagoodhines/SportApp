//
//  UserTableViewController.swift
//  Sport App
//
//  Created by Amanda Goodhines on 12/12/17.
//  Copyright © 2017 Amanda Goodhines. All rights reserved.
//KEEP...GOOD....same as MealTableViewController.swift

import UIKit

class UserTableViewController: UITableViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    //MARK: Properties
    // makes empty array "users" of objects' of "User"
    var users = [User]()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
      loadSampleUsers()
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Table view cells are reused and should be dequeued using cell identifier
        let cellIdentifier = "UserTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? UserTableViewCell else{
            fatalError("The dequeued cell isn't an instance of UserTableViewCell")
        }
        
        //Fetches appropriate user for data source output
        let user = users[indexPath.row]
        
        cell.userNameLabel.text = user.name
        cell.userAgeLabel.text = user.age
        cell.userSportLabel.text = user.sport
        cell.photoImageView.image = user.photo
        

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
  

   
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
 

 
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
   

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
 

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
  
    
    //MARK: Private Methods
    private func loadSampleUsers(){
        guard let user1 = User(name: "Amanda", age: "20", gender: "female", height: 64, weight: 125, sport: "soccer", email: nil, userID: "A456", photo: nil) else{
            fatalError("Amanda couldn't load")
        }
        
        guard let user2 = User(name: "John", age: "16", gender: "female", height: 70, weight: 190, sport: "football", email: nil, userID: "J123", photo: nil) else{
            fatalError("John couldn't load")
        }
        
        guard let user3 = User(name: "jane", age: "15", gender: "male", height: 55, weight: 100, sport: "volleyball", email: nil, userID: "j739", photo: nil) else{
            fatalError("jane couldn't load")
        }
    
        users += [user1, user2, user3]
    }
    
    

}
