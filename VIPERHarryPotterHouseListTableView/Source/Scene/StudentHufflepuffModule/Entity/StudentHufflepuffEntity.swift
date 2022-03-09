//
//  StudentHufflepuffEntity.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

//MARK: - Model data

struct StudentHufflepuff {
    let name: String
}

protocol StudentHufflepuffEntityProtocol {
    func giveDataStudents() -> [StudentHufflepuff]
}

final class StudentHufflepuffEntity: StudentHufflepuffEntityProtocol {
    
    //MARK: - StudentHufflepuffEntityProtocol method
    
    func giveDataStudents() -> [StudentHufflepuff] {
        return [
            StudentHufflepuff(name: "Hannah Abbot"),
            StudentHufflepuff(name: "Susan Bones"),
            StudentHufflepuff(name: "Eleanor Branstone"),
            StudentHufflepuff(name: "Megan Jones"),
            StudentHufflepuff(name: "Cedric Diggory"),
            StudentHufflepuff(name: "Duel Champion Hufflepuff"),
            StudentHufflepuff(name: "Hufflepuff Dueling Club Captain"),
            StudentHufflepuff(name: "Owen Caldwell"),
            StudentHufflepuff(name: "Lianna"),
            StudentHufflepuff(name: "Ernie Macmillan"),
            StudentHufflepuff(name: "Heidi McAvoy"),
            StudentHufflepuff(name: "Laura Madeley"),
            StudentHufflepuff(name: "Maxine O'Flaherty"),
            StudentHufflepuff(name: "Potions Club President"),
            StudentHufflepuff(name: "Malcolm Preece"),
            StudentHufflepuff(name: "Anthony Rickett"),
            StudentHufflepuff(name: "Elina Roman"),
            StudentHufflepuff(name: "Scotkins"),
            StudentHufflepuff(name: "Zachariah Smith"),
            StudentHufflepuff(name: "Stebbins"),
            StudentHufflepuff(name: "Gabriel Truman"),
            StudentHufflepuff(name: "Kevin Whitby"),
            StudentHufflepuff(name: "Philip"),
            StudentHufflepuff(name: "Justin Finch-Fletchley"),
            StudentHufflepuff(name: "Herbert Fleet"),
            StudentHufflepuff(name: "Sullivan Foley"),
            StudentHufflepuff(name: "Beatrice Haywood"),
            StudentHufflepuff(name: "Wayne Hopkins"),
            StudentHufflepuff(name: "Rose Zeller"),
            StudentHufflepuff(name: "Tamsin Appleby")
        ]
    }
}


