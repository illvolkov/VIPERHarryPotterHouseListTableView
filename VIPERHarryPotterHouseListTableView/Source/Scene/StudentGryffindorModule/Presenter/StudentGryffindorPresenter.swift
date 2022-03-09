//
//  StudentGryffindorPresenter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentGryffindorPresenterProtocol: AnyObject {
    func configureView()
    func receiveDataStudentsFromInteractor(with data: [StudentGryffindor])
}

final class StudentGryffindorPresenter: StudentGryffindorPresenterProtocol {
    
    //MARK: - References
    
    weak var view: StudentGryffindorViewProtocol!
    var interactor: StudentGryffindorInteractorProtocol!
    var router: StudentGryffindorRouterProtocol!
    
    //MARK: - Initial
    
    init(view: StudentGryffindorViewProtocol) {
        self.view = view
    }
    
    //MARK: - Data
    
    var studentsData = [StudentGryffindor]() {
        didSet {
            view.setupDataForTableView(with: studentsData)
            print("Presenter отправляет данные во View")
        }
    }
    
    //MARK: - StudentGryffindorPresenterProtocol method
    
    func receiveDataStudentsFromInteractor(with data: [StudentGryffindor]) {
        self.studentsData = data
        print("Presenter получил данные для конфигурации от Interactor")
    }
    
    func configureView() {
        interactor.receiveDataStudentsFromEntity()
        print("Presenter говорит Interactor'у что нужны данные для конфигурации View")
    }
    

}

