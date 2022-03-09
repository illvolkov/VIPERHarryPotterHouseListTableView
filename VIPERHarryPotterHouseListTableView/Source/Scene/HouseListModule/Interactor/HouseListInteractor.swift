//
//  HouseListInteractor.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol HouseListInteractorProtocol: AnyObject {
    var getImageGryffindor: String { get }
    var getImageHufflepuff: String { get }
    var getImageRavenclaw: String { get }
    var getImageSlytherin: String { get }
}

final class HouseListInteractor: HouseListInteractorProtocol {
    
    //MARK: - Reference
    
    weak var presenter: HouseListPresenterProtocol!
    var houseEntity: HouseListEntityProtocol = HouseListEntity()
    
    //MARK: - Initial
    
    init(presenter: HouseListPresenterProtocol) {
        self.presenter = presenter
    }
    
    //MARK: - HouseListInteractorProtocol properties
    
    var getImageGryffindor: String {
        get {
            print("Interactor берет из сущности картинку Gryffindor")
            return houseEntity.gryffindor
        }
    }
    
    var getImageHufflepuff: String {
        get {
            print("Interactor берет из сущности картинку Hufflepuff")
            return houseEntity.hufflepuff
        }
    }
    
    var getImageRavenclaw: String {
        get {
            print("Interactor берет из сущности картинку Ravenclaw")
            return houseEntity.ravenclaw
        }
    }
    
    var getImageSlytherin: String {
        get {
            print("Interactor берет из сущности картинку Slytherin")
            return houseEntity.slytherin
        }
    }
    
}

