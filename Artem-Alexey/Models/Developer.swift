//
//  Developer.swift
//  Artem-Alexey
//
//  Created by Артем ШАЛИН on 13.02.2022.
//

import Foundation

struct Developer {
    
    let name: String
    let email: String

    static func getDevelopers() -> [Developer] {
        return DataManager.data.developers
    }
    
}

