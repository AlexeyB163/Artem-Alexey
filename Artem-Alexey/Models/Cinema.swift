//
//  Cinema.swift
//  Artem-Alexey
//
//  Created by User on 09.02.2022.
//

struct Cinema {
    let title: String
    let adress: String
    let shedule: [String]
    
    static func getCinemas() -> [Cinema] {
        DataManager.data.cinemas
    }
}
