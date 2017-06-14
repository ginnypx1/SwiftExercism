//Solution goes in Sources

import Foundation


class SpaceAge {
    
    let seconds: Int
    
    init(_ seconds: Int) {
        self.seconds = seconds
    }
    
    var onEarth: Double {
        // Earth: orbital period 365.25 Earth days, or 31557600 seconds
        let earthAge = Double(self.seconds) / 31557600.0
        let ageString = String(format: "%.2f", earthAge)
        return Double(ageString)!
    }
    
    var onMercury: Double {
        // Mercury: orbital period 0.2408467 Earth years
        let mercuryAge = Double(self.seconds) / (31557600.0 * 0.2408467)
        let ageString = String(format: "%.2f", mercuryAge)
        return Double(ageString)!
    }
    
    var onVenus: Double {
        // Venus: orbital period 0.61519726 Earth years
        let venusAge = Double(self.seconds) / (31557600.0 * 0.61519726)
        let ageString = String(format: "%.2f", venusAge)
        return Double(ageString)!
    }
    
    var onMars: Double {
        // Mars: orbital period 1.8808158 Earth years
        let marsAge = Double(self.seconds) / (31557600.0 * 01.8808158)
        let ageString = String(format: "%.2f", marsAge)
        return Double(ageString)!
    }
    
    var onJupiter: Double {
        // Jupiter: orbital period 11.862615 Earth years
        let jupiterAge = Double(self.seconds) / (31557600.0 * 11.862615)
        let ageString = String(format: "%.2f", jupiterAge)
        return Double(ageString)!
    }
    
    var onSaturn: Double {
        // Saturn: orbital period 29.447498 Earth years
        let saturnAge = Double(self.seconds) / (31557600.0 * 29.447498)
        let ageString = String(format: "%.2f", saturnAge)
        return Double(ageString)!
    }
    
    var onUranus: Double {
        // Uranus: orbital period 84.016846 Earth years
        let uranusAge = Double(self.seconds) / (31557600.0 * 84.016846)
        let ageString = String(format: "%.2f", uranusAge)
        return Double(ageString)!
    }
    
    var onNeptune: Double {
        // Neptune: orbital period 164.79132 Earth years
        let neptuneAge = Double(self.seconds) / (31557600.0 * 164.79132)
        let ageString = String(format: "%.2f", neptuneAge)
        return Double(ageString)!
    }
}
