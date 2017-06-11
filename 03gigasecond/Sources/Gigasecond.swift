//Solution goes in Sources

import Foundation


class Gigasecond {
    
    var description: String = ""
    
    init?(from givenDate: String) {
        // create date formatter
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        
        // convert datestring to date
        guard let date = dateFormatter.date(from: givenDate) else {
            return nil
        }
        
        // add gigasecond
        let gigasecond: Double = 1000000000.0
        let timeGigasecondLater = date.addingTimeInterval(gigasecond)
        
        // set description property to formatted datestring
        self.description = dateFormatter.string(from: timeGigasecondLater)
    }
}
