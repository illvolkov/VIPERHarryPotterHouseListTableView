//
//  StudentGryffindorConfigurator.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentGryffindorConfiguratorProtocol {
    func configure(with viewcontroller: StudentGryffindorView)
}

final class StudentGryffindorConfigurator: StudentGryffindorConfiguratorProtocol {
    
    func configure(with viewcontroller: StudentGryffindorView) {
        let presenter = StudentGryffindorPresenter(view: viewcontroller)
        let interactor = StudentGryffindorInteractor(presenter: presenter)
        let router = StudentGryffindorRouter(viewcontroller: viewcontroller)
        
        viewcontroller.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}

