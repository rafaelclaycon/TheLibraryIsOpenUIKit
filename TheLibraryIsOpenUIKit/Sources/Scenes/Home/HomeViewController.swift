import Foundation
import UIKit

protocol HomeDisplayLogic: AnyObject {

    func displayHome(viewModel: Home.ViewModel)

}

final class HomeViewController: UIViewController {
    
    private var interactor: HomeBusinessLogic?
    private var router: HomeRoutingLogic?
    
    private var home = HomeView()
    
    override func loadView() {
        super.loadView()
        view = home
        interactor?.getPodcasts()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        configNavigationBar()
    }
    
    func setUp(interactor: HomeBusinessLogic? = nil, router: HomeRoutingLogic? = nil) {
        self.interactor = interactor
        self.router = router
    }
    
    private func configNavigationBar() {
        navigationController?.setNavigationAttibutes(barTintColor: .white, foregroundColor: .systemPink)
        
        addRightNavBarButton()
        
        navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
        navigationController?.setNavigationBarHidden(false, animated: false)
        navigationController?.navigationBar.isHidden = false
    }
    
    private func addRightNavBarButton() {
        let button = UIButton()
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.setTitleColor(.systemPink, for: .normal)
        button.setTitle("Add Podcast", for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(17)
        
        let rightButton = UIBarButtonItem(customView: button)
        navigationItem.setRightBarButton(rightButton, animated: true)
    }

}

extension HomeViewController: HomeDisplayLogic {
    
    func displayHome(viewModel: Home.ViewModel) {
        home.viewModel = viewModel
    }
    
}
