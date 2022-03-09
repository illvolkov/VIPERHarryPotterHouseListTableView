//
//  StudentGryffindorEntity.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

//MARK: - Model data

struct StudentGryffindor {
    let name: String
}

protocol StudentGryffindorEntityProtocol {
    func giveDataStudents() -> [StudentGryffindor]
}

final class StudentGryffindorEntity: StudentGryffindorEntityProtocol {
    
    //MARK: - StudentGryffindorEntityProtocol method
    
    func giveDataStudents() -> [StudentGryffindor] {
        return [
            StudentGryffindor(name: "Harry Potter"),
            StudentGryffindor(name: "Ron Weasley"),
            StudentGryffindor(name: "Hermione Granger"),
            StudentGryffindor(name: "Romilda Vane"),
            StudentGryffindor(name: "Oliver Wood"),
            StudentGryffindor(name: "Lavanda Brown"),
            StudentGryffindor(name: "Faye Dunbar"),
            StudentGryffindor(name: "Angelina Johnson"),
            StudentGryffindor(name: "Lee Jordan"),
            StudentGryffindor(name: "Kella"),
            StudentGryffindor(name: "Dennis Creevey"),
            StudentGryffindor(name: "Colin Creevy"),
            StudentGryffindor(name: "Richie Coot"),
            StudentGryffindor(name: "Michael"),
            StudentGryffindor(name: "Natalie McDonald"),
            StudentGryffindor(name: "Cormac McLaggen"),
            StudentGryffindor(name: "Eloise Midgen"),
            StudentGryffindor(name: "Angus Matlock"),
            StudentGryffindor(name: "Riona O'Neill"),
            StudentGryffindor(name: "Parvati Patil"),
            StudentGryffindor(name: "Kathy Bell"),
            StudentGryffindor(name: "Jimmy Peaks"),
            StudentGryffindor(name: "Demelza Robins"),
            StudentGryffindor(name: "Kenneth Tauler"),
            StudentGryffindor(name: "Dean Thomas"),
            StudentGryffindor(name: "Emily Taylor"),
            StudentGryffindor(name: "Jack Sloper"),
            StudentGryffindor(name: "Alicia Spinnet"),
            StudentGryffindor(name: "Ginny Weasley"),
            StudentGryffindor(name: "George Weasley"),
            StudentGryffindor(name: "Percy Weasley"),
            StudentGryffindor(name: "Bem"),
            StudentGryffindor(name: "Fred Weasley"),
            StudentGryffindor(name: "Nigel Wolpert"),
            StudentGryffindor(name: "Seamus Finnigan"),
            StudentGryffindor(name: "Vikki Frobisher"),
            StudentGryffindor(name: "Geoffrey Hooper"),
            StudentGryffindor(name: "Euan Abercrombie")
        ]
    }
    
}


