//
//  Cinema.swift
//  Artem-Alexey
//
//  Created by User on 09.02.2022.
//

struct Cinema {
    let title: String
    let sсhedule: String
    
   static func getscheduleCinemas () -> [String:[String]] {
        var cinemas:[String:[String]] = [:]
       let cinema = DataManager.data.titleCinemas.shuffled()
        for index in cinema {
            cinemas[index.key] = DataManager.data.schedule.randomElement()
        }
        return cinemas
    }
}
