//
//  StudentSlytherinConfigurator.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentSlytherinConfiguratorProtocol {
    func configure(with viewcontroller: StudentSlytherinView)
}

final class StudentSlytherinConfigurator: StudentSlytherinConfiguratorProtocol {
    
    func configure(with viewcontroller: StudentSlytherinView) {
        let presenter = StudentSlytherinPresenter(view: viewcontroller)
        let interactor = StudentSlytherinInteractor(presenter: presenter)
        let router = StudentSlythreinRouter(viewcontroller: viewcontroller)
        
        viewcontroller.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}

