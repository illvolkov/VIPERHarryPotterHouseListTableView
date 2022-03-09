//
//  StudentSlytherinInteractor.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentSlytherinInteractorProtocol {
    func receiveDataStudentsFromEntity()
}

final class StudentSlytherinInteractor: StudentSlytherinInteractorProtocol {
    
    //MARK: - References
    
    weak var presenter: StudentSlytherinPresenterProtocol!
    var studentsEntity: StudentSlytherinEntityProtocol = StudentSlytherinEntity()
    
    //MARK: - Initial
    
    init(presenter: StudentSlytherinPresenterProtocol) {
        self.presenter = presenter
    }
    
    //MARK: - Data
    
    var dataStudents = [StudentSlytherin]() {
        didSet {
            presenter.receiveDataStudentsFromInteractor(with: dataStudents)
            print("Interactor отправляет данные Presenter'у")
        }
    }
    
    //MARK: - StudentSlytherinInteractorProtocol method
    
    func receiveDataStudentsFromEntity() {
        let data = studentsEntity.giveDataStudents()
        self.dataStudents = data
        print("Interactor берет данные из сущности")
    }
}

