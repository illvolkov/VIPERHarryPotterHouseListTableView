//
//  HouseListEntity.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol HouseListEntityProtocol {
    var gryffindor: String { get }
    var hufflepuff: String { get }
    var ravenclaw: String { get }
    var slytherin: String { get }
}

final class HouseListEntity: HouseListEntityProtocol {
    
    //MARK: - Data for buttons
    
    var gryffindor: String {
        return "gryffindor"
    }
    
    var hufflepuff: String {
        return "hufflepuff"
    }
    
    var ravenclaw: String {
        return "ravenclaw"
    }
    
    var slytherin: String {
        return "slytherin"
    }
}

