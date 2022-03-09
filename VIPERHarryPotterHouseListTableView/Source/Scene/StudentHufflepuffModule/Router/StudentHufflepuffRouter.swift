//
//  StudentHufflepuffRouter.swift
//  VIPERHarryPotterHouseListTableView
//
//  Created by Ilya Volkov on 09.03.2022.
//

import Foundation

protocol StudentHufflepuffRouterProtocol: AnyObject {
    
}

final class StudentHufflepuffRouter: StudentHufflepuffRouterProtocol {
    
    weak var viewcontroller: StudentHufflepuffView!
    
    init(viewcontroller: StudentHufflepuffView) {
        self.viewcontroller = viewcontroller
    }
}
