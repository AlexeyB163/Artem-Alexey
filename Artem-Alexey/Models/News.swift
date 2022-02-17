//
//  News.swift
//  Artem-Alexey
//
//  Created by User on 09.02.2022.
//

struct News {
    let title: String
    let newsImage: String
    
    static func getNews() -> [String] {
        
        var news:[String] = []
        
        for title in DataManager.data.titlesNews {
            news.append(title)
        }
        return news
    }
}

enum NewsImage: String {
    case avengers = "Avengers Endgame news"
    case badBoys = "Bad boys 2 news"
    case onePlusOne = "1+1 news"
    case mirror = "Black mirror news"
    
    static let allValue = [avengers, badBoys, onePlusOne, mirror]
}

