//
//  MovieData.swift
//  Esay - Movie App
//
//  Created by admin on 16.12.2020.
//  Copyright © 2020 esaygiver. All rights reserved.
//

import UIKit

struct Movie: Codable {

    let title: String
    let posterPath: String
    let releaseDate: String
    let overview: String
    let id: Int
    let backDrop: String
    let rate: Double
    let videoPath: String?
    
    var posterURL: URL {
        return URL(string: "\(getURL(on: .imageURL))\(posterPath ?? "")")!
    }
    var backdropURL: URL {
        return URL(string: "\(getURL(on: .imageURL))\(backDrop ?? "")")!
    }
    
    private enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path", backDrop = "backdrop_path", rate = "vote_average", releaseDate = "release_date", title, overview, id, videoPath
    }
}

struct DataResults: Codable {
    let page: Int
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "results", page
    }
}

