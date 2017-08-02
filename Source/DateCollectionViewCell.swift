//
//  DateCollectionViewCell.swift
//  DateTimePicker
//
//  Created by Huong Do on 9/26/16.
//  Copyright © 2016 ichigo. All rights reserved.
//

import UIKit

class DateCollectionViewCell: UICollectionViewCell {
  var dayLabel: UILabel!
  var numberLabel: UILabel!
  
  var lemonColor = UIColor(red: 248.0/255.0, green: 211.0/255.0, blue: 28.0/255.0, alpha: 1)
  
  override init(frame: CGRect) {
    
    dayLabel = UILabel(frame: CGRect(x: 5, y: 15, width: frame.width - 10, height: 20))
    dayLabel.font = UIFont(name: "Avenir-Black", size: 12)!
    dayLabel.textColor = UIColor.black.withAlphaComponent(0.36)
    dayLabel.textAlignment = .center
    
    numberLabel = UILabel(frame: CGRect(x: 5, y: 50, width: frame.width - 10, height: 30))
    numberLabel.font = UIFont(name: "Avenir-Black", size: 18)!
    numberLabel.textColor = UIColor.black.withAlphaComponent(0.87)
    numberLabel.textAlignment = .center
    
    super.init(frame: frame)
    
    contentView.addSubview(dayLabel)
    contentView.addSubview(numberLabel)
    contentView.backgroundColor = .clear
    contentView.layer.cornerRadius = frame.width / 2
    contentView.layer.masksToBounds = true
    //contentView.layer.borderWidth = 1
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override var isSelected: Bool {
    didSet {
      contentView.backgroundColor = isSelected ? lemonColor : .clear
    }
  }
  
  func populateItem(date: Date, highlightColor: UIColor, darkColor: UIColor) {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEEE"
    dayLabel.text = dateFormatter.string(from: date).uppercased()
    
    let numberFormatter = DateFormatter()
    numberFormatter.dateFormat = "d"
    numberLabel.text = numberFormatter.string(from: date)
  }
  
}
