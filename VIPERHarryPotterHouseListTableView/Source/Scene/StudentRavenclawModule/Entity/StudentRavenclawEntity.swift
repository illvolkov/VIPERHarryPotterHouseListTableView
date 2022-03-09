//
//  StudentRavenclawEntity.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

//MARK: - Model data

struct StudentRavenclaw {
    let name: String
}

protocol StudentRavenclawEntityProtocol {
    func giveDataStudents() -> [StudentRavenclaw]
}

final class StudentRavenclawEntity: StudentRavenclawEntityProtocol {
    
    //MARK: - StudentRavenclawEntityProtocol method
    
    func giveDataStudents() -> [StudentRavenclaw] {
        return [
            StudentRavenclaw(name: "Alanis"),
            StudentRavenclaw(name: "Dennis Aldermaston"),
            StudentRavenclaw(name: "Stuart Ackerley"),
            StudentRavenclaw(name: "Marcus Belby"),
            StudentRavenclaw(name: "Mandy Brocklehurst"),
            StudentRavenclaw(name: "Bradley"),
            StudentRavenclaw(name: "Terry Booth"),
            StudentRavenclaw(name: "Anthony Goldstein"),
            StudentRavenclaw(name: "Ravenclaw Duel Champion"),
            StudentRavenclaw(name: "Roger Davis"),
            StudentRavenclaw(name: "Duncan Ingleby"),
            StudentRavenclaw(name: "Michael Corner"),
            StudentRavenclaw(name: "Eddie Carmichael"),
            StudentRavenclaw(name: "Penelope Crystal"),
            StudentRavenclaw(name: "Luna Lovegood"),
            StudentRavenclaw(name: "Padma Patil"),
            StudentRavenclaw(name: "Grant Page"),
            StudentRavenclaw(name: "Orla Svirk"),
            StudentRavenclaw(name: "Jeremy Stretton"),
            StudentRavenclaw(name: "Jason Samuels"),
            StudentRavenclaw(name: "Lisa Turpin"),
            StudentRavenclaw(name: "S. Fawcett"),
            StudentRavenclaw(name: "Robert Hilliard"),
            StudentRavenclaw(name: "Zhou Chang"),
            StudentRavenclaw(name: "Chambers"),
            StudentRavenclaw(name: "Marietta Edgecombe"),
            StudentRavenclaw(name: "Eliza")
        ]
    }
    
}


