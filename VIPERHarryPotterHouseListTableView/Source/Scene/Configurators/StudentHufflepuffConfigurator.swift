//
//  StudentHufflepuffConfigurator.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentHufflepuffConfiguratorProtocol {
    func configure(with viewcontroller: StudentHufflepuffView)
}

final class StudentHufflepuffConfigurator: StudentHufflepuffConfiguratorProtocol {
    
    func configure(with viewcontroller: StudentHufflepuffView) {
        let presenter = StudentHufflepuffPresenter(view: viewcontroller)
        let interactor = StudentHufflepuffInteractor(presenter: presenter)
        let router = StudentHufflepuffRouter(viewcontroller: viewcontroller)
        
        viewcontroller.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
