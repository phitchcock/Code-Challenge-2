//
//  EditViewController.swift
//  CodeChallengeTwo
//
//  Created by Peter Hitchcock on 10/10/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class EditViewController: UIViewController {

    var city:City!

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityNameTextField: UITextField!
    @IBOutlet weak var cityStateTextField: UITextField!
    @IBOutlet weak var wikiURLTextField: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()

        self.imageView.image = UIImage(named: city.image)
        self.cityNameTextField.text = city.name
        self.cityStateTextField.text = city.state
        self.wikiURLTextField.text = city.url
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func editButtonPressed(sender: AnyObject) {
        city.name = cityNameTextField.text
        
    }

}
