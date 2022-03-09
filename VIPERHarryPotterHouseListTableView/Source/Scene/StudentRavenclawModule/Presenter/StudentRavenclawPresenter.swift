//
//  StudentRavenclawPresenter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentRavenclawPresenterProtocol: AnyObject {
    func configureView()
    func receiveDataStudentsFromInteractor(with data: [StudentRavenclaw])
}

final class StudentRavenclawPresenter: StudentRavenclawPresenterProtocol {
    
    //MARK: - References
    
    weak var view: StudentRavenclawViewProtocol!
    var interactor: StudentRavenclawInteractorProtocol!
    var router: StudentRavenclawRouterProtocol!
    
    //MARK: - Initial
    
    init(view: StudentRavenclawViewProtocol) {
        self.view = view
    }
    
    //MARK: - Data
    
    var studentsData = [StudentRavenclaw]() {
        didSet {
            view.setupDataForTableView(with: studentsData)
            print("Presenter отправляет данные во View")
        }
    }
    
    //MARK: - StudentRavenclawPresenterProtocol methods
    
    func receiveDataStudentsFromInteractor(with data: [StudentRavenclaw]) {
        self.studentsData = data
        print("Presenter получил данные для конфигурации от Interactor")
    }
    
    func configureView() {
        interactor.receiveDataStudentsFromEntity()
        print("Presenter говорит Interactor'у что нужны данные для конфигурации View")
    }
}


