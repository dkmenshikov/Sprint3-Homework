//
//  Date+Extensions.swift
//  Sprint3 Homework
//
//  Created by Dmitriy Menshikov on 13.11.23.
//

import Foundation

private let dateTimeFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "[dd.MM.YY hh:mm]: "
    return dateFormatter
}()

extension Date {
    var dateTimeString: String {
        dateTimeFormatter.string(from: self)
    }
}
