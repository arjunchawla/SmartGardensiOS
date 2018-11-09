//
//  ChangeBackgroundViewController.swift
//  SmartGarden
//
//  Created by Arjun Chawla on 10/6/18.
//  Copyright © 2018 Jason Shortino. All rights reserved.
//



// this will change the background of all the view controllers
//STILL NEED TO KNOW HOW TO CHANGE THE BACKGROUND GLOBALLY

import UIKit

class ChangeBackgroundViewController: UIViewController {

    @IBOutlet weak var backgoundPicker: UIPickerView! //var for picker view
    

    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var label: UILabel!
    private let dataSource = ["red", "blue", "green", "yellow"]
    var color = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        backgoundPicker.delegate = self
        backgoundPicker.dataSource = self
        
    }
    

    @IBAction func applyAction(_ sender: Any) {
       // label.text = color
        if(color=="red"){
            view.backgroundColor = UIColor.red
        }
        if(color=="blue"){
            view.backgroundColor = UIColor.blue
        }
        if(color=="green"){
            view.backgroundColor = UIColor.green
        }
        if(color=="yellow"){
            view.backgroundColor = UIColor.yellow
        }
        
    }
    
    
    
    
    
    

    @IBOutlet weak var images: UIPickerView!
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

extension ChangeBackgroundViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    //setting the delegate for uipicker
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //setting the data source for uipicker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataSource.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
            color = dataSource[row]
            //print(color)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataSource[row]
    }



}
