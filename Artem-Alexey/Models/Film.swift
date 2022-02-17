//
//  Film.swift
//  Artem-Alexey
//
//  Created by User on 09.02.2022.
//

struct Film {
    let title: String
    let cover: String
    let genre: Genre
    let description: String
    var duration: Int {  
        Int.random(in: 80...120)
    }
    
    var score: Float {
        Float.random(in: 5...10)
    }
    
    static func getDataFilm() -> [Film] {
        var films:[Film] = []
        let data = DataManager.data
        for (index,title) in data.titlesFilms.enumerated() {
                switch title{
                case TitleFilm.avengers.rawValue:
                    films.append(
                        Film(title: title,
                             cover: data.coverImage[index],
                             genre: Genre.action,
                             description: data.descriptionFilm[index]
                             )
                        )
                case TitleFilm.badBoys.rawValue:
                    films.append(
                        Film(title: title,
                             cover: data.coverImage[index],
                             genre: Genre.comedy,
                             description: data.descriptionFilm[index]
                            )
                    )
                case TitleFilm.onePlusOne.rawValue:
                    films.append(
                        Film(title: title,
                             cover: data.coverImage[index],
                             genre: Genre.comedy,
                             description: data.descriptionFilm[index]
                            )
                    )
                default:
                    films.append(
                        Film(title: title,
                             cover: data.coverImage[index],
                             genre: Genre.dystopia,
                             description: data.descriptionFilm[index]
                            )
                    )
                }
        }
        return films
    }
}

enum TitleFilm: String {
    case avengers = "Мстители: Финал"
    case badBoys = "Плохие парни 2"
    case onePlusOne = "1+1"
    case mirror = "Черное зеркало"
}

enum Genre: String {
    case action = "Экшн"
    case comedy = "Комедия"
    case dystopia = "Антиутопия"
}
