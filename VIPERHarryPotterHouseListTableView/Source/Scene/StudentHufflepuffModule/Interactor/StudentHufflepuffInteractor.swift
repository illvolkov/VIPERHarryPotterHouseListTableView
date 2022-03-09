//
//  StudentHufflepuffInteractor.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentHufflepuffInteractorProtocol {
    func receiveDataStudentsFromEntity()
}

final class StudentHufflepuffInteractor: StudentHufflepuffInteractorProtocol {
    
    //MARK: - References
    
    weak var presenter: StudentHufflepuffPresenterProtocol!
    var studentsEntity: StudentHufflepuffEntityProtocol = StudentHufflepuffEntity()
    
    //MARK: - Data
    
    var dataStudents = [StudentHufflepuff]() {
        didSet {
            presenter.receiveDataStudentsFromInteractor(with: dataStudents)
            print("Interactor отправляет данные Presenter'у")
        }
    }
    
    //MARK: - Initial
    
    init(presenter: StudentHufflepuffPresenterProtocol) {
        self.presenter = presenter
    }
    
    //MARK: - StudentHufflepuffInteractorProtocol method
    
    func receiveDataStudentsFromEntity() {
        let data = studentsEntity.giveDataStudents()
        self.dataStudents = data
        print("Interactor берет данные из сущности")
    }
}


