//
//  ViewController.swift
//  MyFinalProject
//
//  Created by JScharm on 11/30/15.
//  Copyright © 2015 JScharm. All rights reserved.
//

import UIKit

class ViewController: UIViewController

{
    @IBOutlet weak var hourlySalaryTextBox: UITextField!
    
    
    var salaryClass = SalaryClass()  // Turn SalaryClass and its properties into a variable
    

    override func viewDidLoad()
        
    {
        super.viewDidLoad()
        
    }
    
    @IBAction func hourlySalaryButtonTap(sender: UIButton)
    {
        
        salaryClass.hourlyIncome = Double(hourlySalaryTextBox.text!)!  

    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)  // Preparing to segue to next View
        
        
    {
        let viewTwo = segue.destinationViewController as! ViewControllerTwo  // Creates a variable called viewTwo and sets that equal to the destination which is ViewControllerTwo
        
        viewTwo.salaryClassTwo = salaryClass  // The salaryClass and its properties are set equal to the salaryClassTwo on the ViewControllerTwo
    }
    
    
    


}

