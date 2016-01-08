//
//  ViewControllerFour.swift
//  MyFinalProject
//
//  Created by JScharm on 12/1/15.
//  Copyright © 2015 JScharm. All rights reserved.
//

import UIKit

class ViewControllerFour: UIViewController
{
    
    @IBOutlet weak var weeksPerYearTextField: UITextField!  // Connect text box to code
    
    var salaryClassFour = SalaryClass()  // Turn SalaryClass and its properties into a variable

    override func viewDidLoad()
    
    {
        super.viewDidLoad()

    }

    @IBAction func weeksPerYearButtonTap(sender: UIButton)  // Connext Next button to an action
    {
        salaryClassFour.weeksPerYear = Double(weeksPerYearTextField.text!)!  // Takes the text from weeksPerYearTextField and stores the value of weeksPerYear into the salary class
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)  // Preparing to segue to next View

    {
        let viewFive = segue.destinationViewController as! ViewControllerFive  // Creates a variable called viewFive and sets that equal to the destination which is ViewControllerFive
        
        viewFive.salaryClassFive = salaryClassFour  // The salaryClassFour and its data are set equal to the salaryClassFive on the ViewControllerFive

    }
}
