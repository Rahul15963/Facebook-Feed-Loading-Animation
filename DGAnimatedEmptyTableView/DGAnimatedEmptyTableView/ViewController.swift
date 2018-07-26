//
//  ViewController.swift
//  DGAnimatedEmptyTableView
//
//  Created by developer on 26/07/18.
//  Copyright © 2018 JARS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleView: UIVisualEffectView!

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var insideContainerView: UIView!
    @IBOutlet weak var containerView: UIVisualEffectView!
    var customTableViewLoader: CustomViewLoader!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleView.layer.cornerRadius = 8
        titleView.clipsToBounds = true
        containerView.isHidden = true

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        containerView.isHidden = false
        customTableViewLoader = CustomViewLoader.init(customView: containerView, sourceViewController: self)
        customTableViewLoader.startAnimating()

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func configEmpty(_ view: UIView) {
        super.configEmpty(view)
        label.layer.cornerRadius = 8
        insideContainerView.layer.cornerRadius = 12
        containerView.layer.cornerRadius = 12
        containerView.clipsToBounds = true
        insideContainerView.clipsToBounds = true
        label.clipsToBounds = true

    }

}
