//
//  ViewControllerTwo.swift
//  MyFinalProject
//
//  Created by JScharm on 12/1/15.
//  Copyright © 2015 JScharm. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController
{
    @IBOutlet weak var hoursPerDayTextField: UITextField!  // Connect text box to code
    
    var salaryClassTwo = SalaryClass()  // Turn SalaryClass and its properties into a variable

    override func viewDidLoad()
    
    {
        super.viewDidLoad()

       
    }
    
    @IBAction func hoursPerDayButtonTap(sender: UIButton)  // Connext Next button to an action
    {
       salaryClassTwo.hoursPerDay = Double(hoursPerDayTextField.text!)!  // Takes the text from hoursPerDayTextField and stores the value of hoursPerDay into the salary class
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)  // Preparing to segue to next View
        
    {
        let viewThree = segue.destinationViewController as! ViewControllerThree  // Creates a variable called viewThree and sets that equal to the destination which is ViewControllerThree
        
        viewThree.salaryClassThree = salaryClassTwo  // The salaryClassTwo and its data are set equal to the salaryClassThree on the ViewControllerThree
    }



}
