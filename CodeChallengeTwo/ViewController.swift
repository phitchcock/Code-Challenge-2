//
//  ViewController.swift
//  CodeChallengeTwo
//
//  Created by Peter Hitchcock on 10/10/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var cities = [
        City(name: "Lake Tahoe", state: "California", image: "tahoe.jpg"),
        City(name: "San Francisco", state: "California", image: "sf.jpg"),
        City(name: "Carmel", state: "California", image: "carmel.jpg")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cities.count
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:CustomTableViewCell = tableView.dequeueReusableCellWithIdentifier("dCell", forIndexPath: indexPath) as CustomTableViewCell
        let city = cities[indexPath.row]

        cell.cityNameLabel.text = city.name
        cell.cityStateLabel.text = city.state
        cell.cityImageView.image = UIImage(named: city.image)

        return cell

    }


}

