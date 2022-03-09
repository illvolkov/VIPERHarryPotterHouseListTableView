//
//  HouseListPresenter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol HouseListPresenterProtocol: AnyObject {
    func configureView()
    func slytherinButtonDidTap()
    func gryffindorButtonDidTap()
    func hufflepufButtonDidTap()
    func ravenclawButtonDidTap()
}

final class HouseListPresenter: HouseListPresenterProtocol {
    
    //MARK: - Refefences
    
    weak var view: HouseListViewProtocol!
    var interactor: HouseListInteractorProtocol!
    var router: HouseListRouterProtocol!
    
    //MARK: - Initial
    
    init(view: HouseListViewProtocol) {
        self.view = view
    }
    
    //MARK: - HouseListPresenterProtocol methods
    
    func configureView() {
        view.setImageHouseButton(with: interactor.getImageSlytherin,
                                     interactor.getImageGryffindor,
                                     interactor.getImageHufflepuff,
                                     interactor.getImageRavenclaw)
        print("Presenter отправляет данные View говоря при этом Interactor'у что нужны данные")
    }
    
    func slytherinButtonDidTap() {
        router.openSlytherinStudentList()
        print("Presenter говорит Router'у что нужно открыть экран Slytherin")
    }
    
    func gryffindorButtonDidTap() {
        router.openGryffindorStudentList()
        print("Presenter говорит Router'у что нужно открыть экран Gryffindor")
    }
    
    func hufflepufButtonDidTap() {
        router.openHufflepuffStudentList()
        print("Presenter говорит Router'у что нужно открыть экран Hufflepuff")
    }
    
    func ravenclawButtonDidTap() {
        router.openRavenclawStudentList()
        print("Presenter говорит Router'у что нужно открыть экран Ravenclaw")
    }
}


