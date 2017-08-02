//
//  ViewController.swift
//  DateTimePicker
//
//  Created by Huong Do on 9/16/16.
//  Copyright © 2016 ichigo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var item: UINavigationItem!
  
  @IBAction func showDateTimePicker(sender: AnyObject) {
    let min = Date()
    let max = Calendar.current.date(byAdding: .year, value: 1, to: min)
    let picker = DateTimePicker.show(minimumDate: min, maximumDate: max)
    picker.backgroundViewColor = .clear
    picker.daysBackgroundColor = .clear
    picker.highlightColor = UIColor.black.withAlphaComponent(0.87)
    picker.darkColor = UIColor.black.withAlphaComponent(0.87)
    picker.cancelButtonTitle = "Cancel"
    picker.doneButtonTitle = "DONE"
    picker.todayButtonTitle = "Today"
    picker.is12HourFormat = true
    picker.dateFormat = "EEE, MMMM d"
    picker.isDatePickerOnly = true
    picker.completionHandler = { date in
      let formatter = DateFormatter()
      formatter.dateFormat = "hh:mm aa dd/MM/YYYY"
      self.item.title = formatter.string(from: date)
    }
  }
}
