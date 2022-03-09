//
//  StudentGryffindorRouter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentGryffindorRouterProtocol: AnyObject {
    
}

final class StudentGryffindorRouter: StudentGryffindorRouterProtocol {
    
    weak var viewcontroller: StudentGryffindorView!
    
    init(viewcontroller: StudentGryffindorView) {
        self.viewcontroller = viewcontroller
    }
    
}
