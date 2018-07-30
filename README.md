# Facebook-Feed-Loading-Animation
This loader can be used for table view animations like in Facebook feed loading. You dont have to set table view delegate and datasource for animation. You can configure the animating cell. Please look at the demo example. You will know each and everything.

Update: 
   Now you can add animation to UIView. See the demo example to understand how to do it.

# Demo
![alt text](https://j.gifs.com/G5qwVr.gif)

There is no pod . You can directly download the zip and copy the file CustomViewLoader.swift in your project.

# Table View

Steps:
   
   - create an empty cell in your storyboard. Design the cell as you wish to see it during animation.
   - initialize the loader as
        customViewLoader = CustomViewLoader.init(customTableView: tableView, customCellIdentifier: "Notification1Cell", sourceViewController: self, heightOfCell: 94)
   - start the animation
        customViewLoader.startAnimating()
   - stop the animation
        customViewLoader.stopAnimating()
   
Parameters to be passed in CustomTableViewLoader.init(customTableView: tableView, customCellIdentifier: "Notification1Cell", sourceViewController: self, heightOfCell: 94): 

    - customTableView: Its the tableView that we are starting your animation.
    
    - customCellIdentifier: Its the reuse cell identifier for empty cell that we created on thie 1st Step.
    
    - sourceViewController: Its the reference to the viewcontroller where we are using this class.
    
    - heightOfCell: Its the height of the empty cell. 

We can also customize your empty cell by overriding function configEmpty(_ cell: UITableViewCell, at indexPath: IndexPath) in your ViewController as
    
    override func configEmpty(_ cell: UITableViewCell, at indexPath: IndexPath) {
        super.configEmpty(cell, at: indexPath)
        let notificationCell = cell as! NotificationCell
        notificationCell.containerView.layer.cornerRadius = 8
        notificationCell.containerView.clipsToBounds = true
    }
     

# UIView

Steps:
   
   - create an empty view in your storyboard. Design the view as you wish to see it during animation.
   - initialize the loader as
        customViewLoader = CustomViewLoader.init(customView: containerView, sourceViewController: self)
   - start the animation
        customViewLoader.startAnimating()
   - stop the animation
        customViewLoader.stopAnimating()
     
Parameters to be passed in CustomTableViewLoader.init(customTableView: tableView, customCellIdentifier: "Notification1Cell", sourceViewController: self, heightOfCell: 94): 

    - customView: Its the UIView that we are starting your animation.
        
    - sourceViewController: Its the reference to the viewcontroller where we are using this class.
    

We can also customize your empty view by overriding function configEmpty(_ view: UIView) in your ViewController as
    
    override func configEmpty(_ cell: UITableViewCell, at indexPath: IndexPath) {
        super.configEmpty(view)
        label.layer.cornerRadius = 8
        insideContainerView.layer.cornerRadius = 12
        containerView.layer.cornerRadius = 12
        containerView.clipsToBounds = true
        insideContainerView.clipsToBounds = true
        label.clipsToBounds = true

    }
    
