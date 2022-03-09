//
//  StudentHufflepuffPresenter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentHufflepuffPresenterProtocol: AnyObject {
    func configureView()
    func receiveDataStudentsFromInteractor(with data: [StudentHufflepuff])
}

final class StudentHufflepuffPresenter: StudentHufflepuffPresenterProtocol {
    
    //MARK: - References
    
    weak var view: StudentHufflepuffViewProtocol!
    var interactor: StudentHufflepuffInteractorProtocol!
    var router: StudentHufflepuffRouterProtocol!
    
    //MARK: - Initial
    
    init(view: StudentHufflepuffViewProtocol) {
        self.view = view
    }
    
    //MARK: - Data
    
    var studentsData = [StudentHufflepuff]() {
        didSet {
            view.setupDataForTableView(with: studentsData)
            print("Presenter отправляет данные во View")
        }
    }
    
    //MARK: - StudentHufflepuffPresenterProtocol methods
    
    func receiveDataStudentsFromInteractor(with data: [StudentHufflepuff]) {
        self.studentsData = data
        print("Presenter получил данные для конфигурации от Interactor")
    }
    
    func configureView() {
        interactor.receiveDataStudentsFromEntity()
        print("Presenter говорит Interactor'у что нужны данные для конфигурации View")
    }
    
}
