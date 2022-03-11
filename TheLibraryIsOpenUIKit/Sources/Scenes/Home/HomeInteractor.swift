import Foundation

protocol HomeBusinessLogic {

    func getPodcasts()
    
}

final class HomeInteractor {
    
    private var presenter: HomePresentationLogic?
    
    init(presenter: HomePresentationLogic) {
        self.presenter = presenter
    }

}

extension HomeInteractor: HomeBusinessLogic {
    
    func getPodcasts() {
        
    }
    
}
