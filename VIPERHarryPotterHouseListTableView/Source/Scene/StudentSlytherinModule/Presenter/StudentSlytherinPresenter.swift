//
//  StudentSlytherinPresenter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentSlytherinPresenterProtocol: AnyObject {
    func configureView()
    func receiveDataStudentsFromInteractor(with data: [StudentSlytherin])
}

final class StudentSlytherinPresenter: StudentSlytherinPresenterProtocol {
    
    //MARK: - References
    
    weak var view: StudentSlytherinViewProtocol!
    var interactor: StudentSlytherinInteractorProtocol!
    var router: StudentSlytherinRouterProtocol!
    
    //MARK: - Initial
    
    init(view: StudentSlytherinViewProtocol) {
        self.view = view
    }
    
    //MARK: - Data
    
    var studentsData = [StudentSlytherin]() {
        didSet {
            view.setupDataForTableView(with: studentsData)
            print("Presenter отправляет данные во View")
        }
    }
    
    //MARK: - StudentSlytherinPresenterProtocol methods
    
    func receiveDataStudentsFromInteractor(with data: [StudentSlytherin]) {
        self.studentsData = data
        print("Presenter получил данные для конфигурации от Interactor")
    }
    
    func configureView() {
        interactor.receiveDataStudentsFromEntity()
        print("Presenter говорит Interactor'у что нужны данные для конфигурации View")
    }
}

