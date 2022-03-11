import Foundation
import UIKit

protocol HomeRoutingLogic {

    func routeToSomewhere()

}

final class HomeRouter {

    private weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }

}

extension HomeRouter: HomeRoutingLogic {
    
    func routeToSomewhere() {
        
    }
    
}
