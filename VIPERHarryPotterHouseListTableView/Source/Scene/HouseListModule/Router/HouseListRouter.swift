//
//  HouseListRouter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol HouseListRouterProtocol {
    func openGryffindorStudentList()
    func openHufflepuffStudentList()
    func openRavenclawStudentList()
    func openSlytherinStudentList()
}

final class HouseListRouter: HouseListRouterProtocol {
    
    //MARK: - Reference
    
    weak var viewController: HouseListView!
    
    //MARK: - Initial
        
    init(viewController: HouseListView) {
        self.viewController = viewController
    }
    
    //MARK: - HouseListRouterProtocol methods
    
    func openGryffindorStudentList() {
        viewController.performSegue(withIdentifier: viewController.selfToStudentGryffindorView, sender: nil)
        print("Router открывает экран Gryffindor")
    }
    
    func openHufflepuffStudentList() {
        viewController.performSegue(withIdentifier: viewController.selfToStudentHufflepufView, sender: nil)
        print("Router открывает экран Hufflepuff")
    }
    
    func openRavenclawStudentList() {
        viewController.performSegue(withIdentifier: viewController.selfToStudentRavenclawView, sender: nil)
        print("Router открывает экран Ravenclaw")
    }
    
    func openSlytherinStudentList() {
        viewController?.performSegue(withIdentifier: viewController.selfToStudentSlytherinView, sender: nil)
        print("Router открывает экран Slytherin")
    }
    
//    func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // prepare here some data for destination viewController
//    }
    
}


