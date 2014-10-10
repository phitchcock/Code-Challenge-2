//
//  DetailViewController.swift
//  CodeChallengeTwo
//
//  Created by Peter Hitchcock on 10/10/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var city:City!
    
    @IBOutlet weak var cityImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.cityImageView.image = UIImage(named: city.image)
        title = self.city.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dCell", forIndexPath: indexPath) as DetailTableViewCell

        cell.backgroundColor = UIColor.clearColor()

        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "City Name"
            cell.valueLabel.text = city.name
        case 1:
            cell.fieldLabel.text = "City State"
            cell.valueLabel.text = city.state
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        return cell
    }
}
