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
        self.tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        self.tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
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
        cell.wikiButton.hidden = true

        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "City Name:"
            cell.valueLabel.text = city.name
            cell.wikiButton.hidden = false
        case 1:
            cell.fieldLabel.text = "City State:"
            cell.valueLabel.text = city.state
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        return cell
    }

    @IBAction func unwindToDetailView(segue: UIStoryboardSegue) {
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showWebView" {
            let destinationController = segue.destinationViewController as WebViewController
            destinationController.city = city
        }
        if segue.identifier == "edit" {
            let destinationController = segue.destinationViewController as EditViewController
            destinationController.city = city
        }
    }


}
