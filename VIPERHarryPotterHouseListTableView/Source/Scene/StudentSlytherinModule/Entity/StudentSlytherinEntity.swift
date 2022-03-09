//
//  StudentSlytherinEntity.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

//MARK: - Model data

struct StudentSlytherin {
    let name: String
}

protocol StudentSlytherinEntityProtocol {
    func giveDataStudents() -> [StudentSlytherin]
}


final class StudentSlytherinEntity: StudentSlytherinEntityProtocol {
    
    //MARK: - StudentSlytherinEntityProtocol method
    
    func giveDataStudents() -> [StudentSlytherin] {
        return [
            StudentSlytherin(name: "Draco Malfoy"),
            StudentSlytherin(name: "Lucian Bowl"),
            StudentSlytherin(name: "Millicent Bulstrode"),
            StudentSlytherin(name: "Malcolm Baddock"),
            StudentSlytherin(name: "Veizy"),
            StudentSlytherin(name: "Daphne Greengrass"),
            StudentSlytherin(name: "Gregory Goyle"),
            StudentSlytherin(name: "Peregrine Derrek"),
            StudentSlytherin(name: "Duel Champion of Slytherin"),
            StudentSlytherin(name: "Vincent Crabbe"),
            StudentSlytherin(name: "Hestia Carrow"),
            StudentSlytherin(name: "Flora Carrow"),
            StudentSlytherin(name: "Miles Bletchley"),
            StudentSlytherin(name: "Agnes Monkley"),
            StudentSlytherin(name: "Graham Montagu"),
            StudentSlytherin(name: "Mufalda"),
            StudentSlytherin(name: "Theodore Knott"),
            StudentSlytherin(name: "Pike"),
            StudentSlytherin(name: "Pansy Parkinson"),
            StudentSlytherin(name: "Graham Pritchard"),
            StudentSlytherin(name: "Adrian Pusey"),
            StudentSlytherin(name: "Imogen Stretton"),
            StudentSlytherin(name: "Cassius Warrington"),
            StudentSlytherin(name: "Gemma Farley"),
            StudentSlytherin(name: "Marcus Flint"),
            StudentSlytherin(name: "Harper"),
            StudentSlytherin(name: "Terence Higgs"),
            StudentSlytherin(name: "Urghart")

        ]
    }
}

