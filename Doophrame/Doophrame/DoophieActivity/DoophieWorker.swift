//
//  DoophieWorker.swift
//  Doophrame
//
//  Created by Quinn Fagan on 2018-10-21.
//  Copyright © 2018 Quinn Fagan. All rights reserved.
//

import Foundation

public protocol DoophieWorker {
    
    var traveller: DoophieTravellable? { get set }
    
    func start()
    
}
