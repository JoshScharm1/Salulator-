//
//  ViewControllerThree.swift
//  MyFinalProject
//
//  Created by JScharm on 12/1/15.
//  Copyright © 2015 JScharm. All rights reserved.
//

import UIKit

class ViewControllerThree: UIViewController
{
    
    @IBOutlet weak var daysPerWeekTextField: UITextField!  // Connect text box to code
    
    var salaryClassThree = SalaryClass()  // Turn SalaryClass and its properties into a variable
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()

    }
    
    @IBAction func daysPerWeekButtonTap(sender: UIButton)  // Connext Next button to an action
    {
       salaryClassThree.daysPerWeek = Double(daysPerWeekTextField.text!)!  // Takes the text from daysPerWeekTextField and stores the value of daysPerWeek into the salary class
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)  // Preparing to segue to next View

    {
        let viewFour = segue.destinationViewController as! ViewControllerFour // Creates a variable called viewFour and sets that equal to the destination which is ViewControllerFour
        
        viewFour.salaryClassFour = salaryClassThree  // The salaryClassThree and its data are set equal to the salaryClassFour on the ViewControllerFour
    }
    


}
