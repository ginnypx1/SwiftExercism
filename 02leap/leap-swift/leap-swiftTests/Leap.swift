//
//  Leap.swift
//  Calculates if the given year is a leap year

// Leap year in the Gregorian calendar occurs:
// on every year that is evenly divisible by 4
// except every year that is evenly divisible by 100
// unless the year is also evenly divisible by 400
//
//  Created by Ginny Pennekamp on 7/15/16.
//  Copyright © 2016 GhostBirdGames. All rights reserved.
//

import Foundation

struct Year {
    let isLeapYear: Bool
    
    init(calendarYear: Int) {
        let divBy4   = calendarYear %   4 == 0
        let divBy100 = calendarYear % 100 == 0
        let divBy400 = calendarYear % 400 == 0
        
        self.isLeapYear = (divBy4 && !divBy100) || divBy400
    }

}