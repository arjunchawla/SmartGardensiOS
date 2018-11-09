//
//  ScheduleDetailsViewController.swift
//  SmartGarden
//
//  Created by Jason Shortino on 4/29/18.
//  Copyright © 2018 Jason Shortino. All rights reserved.
//

import UIKit

class ScheduleDetailsViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var timeTextField: UITextField!
    @IBOutlet weak var durationTextField: UITextField!
    @IBOutlet weak var repeatTextField: UITextField!
    @IBOutlet weak var repeatSwitch: UISwitch!
    //var to manipulate the starting time
    @IBOutlet weak var startingTime: UITextField!
    //var to manipulate the duration
    @IBOutlet weak var duration: UITextField!
    let datePicker = UIDatePicker()
    let datePicker2 = UIDatePicker()

    override func viewDidLoad() {
        super.viewDidLoad()
        createDatePicker1()
        createDatePicker2()
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    //functiong to create the date picker when the text field is clicked
    func createDatePicker1(){
        
        datePicker.datePickerMode = .time
        startingTime.inputView = datePicker
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        
        
        
        
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneClicked))
        toolBar.setItems([doneButton], animated: true)
        
        startingTime.inputAccessoryView = toolBar
        

        
    }
    
    func createDatePicker2(){
        datePicker2.datePickerMode = .countDownTimer
        duration.inputView = datePicker2
        let toolBar2 = UIToolbar()
        toolBar2.sizeToFit()
        
        let doneButton2 = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(done2Clicked))
        toolBar2.setItems([doneButton2], animated: true)
        
        duration.inputAccessoryView = toolBar2
        
    }
    
    @objc func doneClicked(){
    let dateFormatter = DateFormatter()
    dateFormatter.timeStyle = .short
    dateFormatter.dateStyle = .none
        
        startingTime.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    @objc func done2Clicked(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .none
        dateFormatter.timeStyle = .none
        
        
        
        duration.text = "\(datePicker2.countDownDuration) secs"
        self.view.endEditing(true)
    }
    
    @IBAction func unwindSegue(_sender: UIStoryboard) {
        
    }
    


    
    

    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
