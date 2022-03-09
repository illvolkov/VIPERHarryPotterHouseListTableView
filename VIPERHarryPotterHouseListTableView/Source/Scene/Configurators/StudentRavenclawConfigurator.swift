//
//  StudentRavenclawConfigurator.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentRavenclawConfiguratorProtocol {
    func configure(with viewcontroller: StudentRavenclawView)
}

final class StudentRavenclawConfigurator: StudentRavenclawConfiguratorProtocol {
    
    func configure(with viewcontroller: StudentRavenclawView) {
        let presenter = StudentRavenclawPresenter(view: viewcontroller)
        let interactor = StudentRavenclawInteractor(presenter: presenter)
        let router = StudentRavenclawRouter(viewcontroller: viewcontroller)
        
        viewcontroller.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
