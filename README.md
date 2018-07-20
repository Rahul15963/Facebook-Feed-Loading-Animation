# Facebook-Feed-Loading-Animation
This loader can be used for table view animations like in Facebook feed loading. 

# Demo
![alt text](https://j.gifs.com/G5qwVr.gif)

There is no pod . You can directly download the zip and copy the file CustomTableViewLoader.swift in your project.

Steps:
   
   - create an empty cell in your storyboard. Design the cell as you wish to see it during animation.
   - initialize the loader as
        customTableViewLoader = CustomTableViewLoader.init(customTableView: tableView, customCellIdentifier: "Notification1Cell", sourceViewController: self, heightOfCell: 94)
   - start the animation
        customTableViewLoader.startAnimating()
   - stop the animation
        customTableViewLoader.stopAnimating()
   
We can also customize your empty cell by overriding function configEmpty(_ cell: UITableViewCell, at indexPath: IndexPath) in your ViewController as
    
    override func configEmpty(_ cell: UITableViewCell, at indexPath: IndexPath) {
        super.configEmpty(cell, at: indexPath)
        let notificationCell = cell as! NotificationCell
        notificationCell.containerView.layer.cornerRadius = 8
        notificationCell.containerView.clipsToBounds = true
    }
      
    
Parameters to be passed in CustomTableViewLoader.init(customTableView: tableView, customCellIdentifier: "Notification1Cell", sourceViewController: self, heightOfCell: 94): 

    - customTableView: Its the tableView that we are starting your animation.
    
    - customCellIdentifier: Its the reuse cell identifier for empty cell that we created on thie 1st Step.
    
    - sourceViewController: Its the reference to the viewcontroller where we are using this class.
    
    - heightOfCell: Its the height of the empty cell. 
