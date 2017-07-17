//Solution goes in Sources

import Foundation


class Gigasecond {
    
    let gigasecond: Double = 1000000000.0
    
    let dateFormatter = DateFormatter()
    let timeZone: TimeZone = TimeZone(secondsFromGMT: 0)!
    let dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
    
    var description: String = ""
    
    init?(from givenDate: String) {
        // format date formatter
        dateFormatter.timeZone = timeZone
        dateFormatter.dateFormat = dateFormat
        
        // convert datestring to date
        guard let date = dateFormatter.date(from: givenDate) else {
            return nil
        }
        
        // add gigasecond
        let timeGigasecondLater = date.addingTimeInterval(gigasecond)
        
        // set description property to formatted datestring
        self.description = dateFormatter.string(from: timeGigasecondLater)
    }
}
