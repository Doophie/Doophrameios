//
//  DoophieTraveller.swift
//  Doophrame
//
//  Created by Quinn Fagan on 2018-10-21.
//  Copyright © 2018 Quinn Fagan. All rights reserved.
//

import Foundation

public protocol DoophieTravellable {
    func travelToActivity(withTraveller: DoophieTraveller)
}

// All things needed by a doophie activity - and possibly its children
// will be specified here
public protocol Dependency {
    
}

open class DoophieTraveller: DoophieTravellable {
    
    open var worker: DoophieWorker!
    open var viewController: UIViewController!
    
    let dependency: Dependency!
    
    public init(viewController: UIViewController, dependency: Dependency) {
        self.viewController = viewController
        self.dependency = dependency
    }
    
    public func travelToActivity(withTraveller traveller: DoophieTraveller) {
        traveller.startWorker()
        viewController.navigationController?.pushViewController(traveller.viewController, animated: true)
    }
    
    public func initAsRoot() -> UIViewController {
        startWorker()
        return viewController
    }
    
    func startWorker() {
        worker.traveller = self
        worker.start()
    }
    

}


