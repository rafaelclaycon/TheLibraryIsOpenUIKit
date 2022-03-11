import UIKit

final class HomeFactory {
    
    static func setUpHome() -> UIViewController {
        let viewController = HomeViewController()
        let presenter = HomePresenter(viewController: viewController)
        let interactor = HomeInteractor(presenter: presenter)
        let router = HomeRouter(viewController: viewController)
        viewController.setUp(interactor: interactor, router: router)
        return viewController
    }
    
}
