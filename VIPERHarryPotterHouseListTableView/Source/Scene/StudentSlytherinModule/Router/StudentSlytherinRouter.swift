//
//  StudentSlytherinRouter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentSlytherinRouterProtocol: AnyObject {
    
}

final class StudentSlythreinRouter: StudentSlytherinRouterProtocol {
    
    weak var viewcontroller: StudentSlytherinView!
    
    init(viewcontroller: StudentSlytherinView) {
        self.viewcontroller = viewcontroller
    }
}

