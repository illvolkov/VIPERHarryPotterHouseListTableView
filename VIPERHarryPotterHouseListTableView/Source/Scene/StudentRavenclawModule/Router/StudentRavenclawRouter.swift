//
//  StudentRavenclawRouter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentRavenclawRouterProtocol: AnyObject {
    
}

final class StudentRavenclawRouter: StudentRavenclawRouterProtocol {
    
    weak var viewcontroller: StudentRavenclawView!
    
    init(viewcontroller: StudentRavenclawView) {
        self.viewcontroller = viewcontroller
    }
}

