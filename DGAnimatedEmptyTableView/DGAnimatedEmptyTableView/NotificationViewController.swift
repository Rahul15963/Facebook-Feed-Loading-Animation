//
//  NotificationViewController.swift
//  EPGA
//
//  Created by Rahul Dasgupta on 24/06/18.
//  Copyright © 2018 Rahul Dasgupta. All rights reserved.
//

import UIKit

class NotificationViewController: UIViewController {
  
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var titleView: UIVisualEffectView!
    var customTableViewLoader: CustomViewLoader!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customTableViewLoader = CustomViewLoader.init(customTableView: tableView, customCellIdentifier: "Notification1Cell", sourceViewController: self, heightOfCell: 94)
        customTableViewLoader.gradientColor = .red
        titleView.layer.cornerRadius = 8
        titleView.clipsToBounds = true
        tableView.tableFooterView = UIView.init()
        customTableViewLoader.startAnimating()
        getNotificationsFromServer()
        
    }
    
    
    override func configEmpty(_ cell: UITableViewCell, at indexPath: IndexPath) {
        super.configEmpty(cell, at: indexPath)
        let notificationCell = cell as! NotificationCell
        notificationCell.containerView.layer.cornerRadius = 8
        notificationCell.containerView.clipsToBounds = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonTapped(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
}

extension NotificationViewController: UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as! NotificationCell
        cell.config()
        return cell
        
    }
}

extension NotificationViewController {
    func getNotificationsFromServer() {
        Timer.scheduledTimer(withTimeInterval: 3, repeats: false, block: { (timer) in
            self.customTableViewLoader.stopAnimating()
            self.tableView.reloadData()
        })
    }
    
    
    
}
