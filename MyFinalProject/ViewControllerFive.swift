//
//  ViewControllerFive.swift
//  MyFinalProject
//
//  Created by JScharm on 12/1/15.
//  Copyright © 2015 JScharm. All rights reserved.
//

import UIKit

class ViewControllerFive: UIViewController
{
    @IBOutlet weak var dailyIncomeLabel: UILabel!
    
    @IBOutlet weak var weeklyIncomeLabel: UILabel!
    
    @IBOutlet weak var annualIncomeLabel: UILabel!
    
    
    var salaryClassFive = SalaryClass()  // Turn SalaryClass and its properties into a variable
    
    var formatter = NSNumberFormatter()  // NSNumberFormatter and its properties are stored as a variable called formatter
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        formatter.numberStyle = .CurrencyStyle  // The number style of the formatter called CurrencyStyle puts a dollar sign and a comma every 3 digits
        
        formatter.maximumFractionDigits = 2
        
      
        let dailyIncome = (salaryClassFive.hoursPerDay) * (salaryClassFive.hourlyIncome)
        
        let weeklyIncome = (salaryClassFive.hourlyIncome) * (salaryClassFive.hoursPerDay) * (salaryClassFive.daysPerWeek)
        
        let annualIncome = (salaryClassFive.hourlyIncome) * (salaryClassFive.hoursPerDay) * (salaryClassFive.daysPerWeek) * (salaryClassFive.weeksPerYear)
    
        dailyIncomeLabel.text = formatter.stringFromNumber(dailyIncome)
        
        weeklyIncomeLabel.text = formatter.stringFromNumber(weeklyIncome)

        
        annualIncomeLabel.text = formatter.stringFromNumber(annualIncome)

    
    }

    

}
