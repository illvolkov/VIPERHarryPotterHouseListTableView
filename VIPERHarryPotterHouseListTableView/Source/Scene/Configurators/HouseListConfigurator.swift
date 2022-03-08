//
//  HouseListConfigurator.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol HouseListConfiguratorProtocol {
    func configure(with viewController: HouseListView)
}

final class HouseListConfigurator: HouseListConfiguratorProtocol {
        
    func configure(with viewController: HouseListView) {
        let presenter = HouseListPresenter(view: viewController)
        let interactor = HouseListInteractor(presenter: presenter)
        let router = HouseListRouter(viewController: viewController)
        
        viewController.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
