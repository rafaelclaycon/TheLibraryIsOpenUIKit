import Foundation

protocol HomePresentationLogic {

    func presentHome(response: Home.Response)

}

final class HomePresenter {
    
    private weak var viewController: HomeDisplayLogic?
    
    init(viewController: HomeDisplayLogic) {
        self.viewController = viewController
    }
    
}

extension HomePresenter: HomePresentationLogic {
    
    func presentHome(response: Home.Response) {
        // let model =
        // viewController?.displayHome()
    }
    
}
