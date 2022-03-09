//
//  StudentRavenclawInteractor.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentRavenclawInteractorProtocol {
    func receiveDataStudentsFromEntity()
}

final class StudentRavenclawInteractor: StudentRavenclawInteractorProtocol {
    
    //MARK: - References
    
    weak var presenter: StudentRavenclawPresenterProtocol!
    var studentsEntity: StudentRavenclawEntityProtocol = StudentRavenclawEntity()
    
    //MARK: - Data
    
    var dataStudents = [StudentRavenclaw]() {
        didSet {
            presenter.receiveDataStudentsFromInteractor(with: dataStudents)
            print("Interactor отправляет данные Presenter'у")
        }
    }
    
    //MARK: - Initial
    
    init(presenter: StudentRavenclawPresenterProtocol) {
        self.presenter = presenter
    }
    
    //MARK: - StudentRavenclawInteractorProtocol method
    
    func receiveDataStudentsFromEntity() {
        let data = studentsEntity.giveDataStudents()
        self.dataStudents = data
        print("Interactor берет данные из сущности")
    }
}


