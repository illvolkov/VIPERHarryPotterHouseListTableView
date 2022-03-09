//
//  StudentGryffindorInteractor.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentGryffindorInteractorProtocol {
    func receiveDataStudentsFromEntity()
}

final class StudentGryffindorInteractor: StudentGryffindorInteractorProtocol {
    
    //MARK: - References
    
    weak var presenter: StudentGryffindorPresenterProtocol!
    var studentsEntity: StudentGryffindorEntityProtocol = StudentGryffindorEntity()
    
    //MARK: - Data
    
    var dataStudents = [StudentGryffindor]() {
        didSet {
            presenter.receiveDataStudentsFromInteractor(with: dataStudents)
            print("Interactor отправляет данные Presenter'у")
        }
    }
    
    //MARK: - Initial
    
    init(presenter: StudentGryffindorPresenterProtocol) {
        self.presenter = presenter
    }
    
    //MARK: - StudentGryffindorInteractorProtocol method
    
    func receiveDataStudentsFromEntity() {
        let data = studentsEntity.giveDataStudents()
        self.dataStudents = data
        print("Interactor берет данные из сущности")
    }
    
    
}


