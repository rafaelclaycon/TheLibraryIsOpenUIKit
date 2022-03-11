import Foundation
import UIKit

protocol HomeViewDelegate: AnyObject {

    func podcastTapped(at index: IndexPath)

}

protocol HomeViewLogic: UIView {

    var delegate: HomeViewDelegate? { get set }

}

final class HomeView: UIView, HomeViewLogic {
    
    // MARK: - Subviews
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "My Archive"
        label.font = UIFont.boldSystemFont(ofSize: 32)
        return label
    }()
    
    private lazy var emptyStateImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "podcastListEmptyState")
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private lazy var emptyStateTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "No Archived Podcasts"
        label.font = label.font.withSize(21)
        return label
    }()
    
    private lazy var emptyStateInstructionsLabel: UILabel = {
        let label = UILabel()
        label.text = "To archive a new podcast, tap the Add Podcast button at the top of the screen."
        label.numberOfLines = 3
        label.font = label.font.withSize(17)
        label.textColor = .gray
        label.textAlignment = .center
        return label
    }()
    
    private lazy var howDoesThisWorkButton: UIButton = {
        let button = UIButton()
        button.setTitleColor(.systemPink, for: .normal)
        button.setTitle("How Does This Work?", for: .normal)
        button.titleLabel?.font = button.titleLabel?.font.withSize(16)
        return button
    }()
    
    // MARK: - Private variables
    var viewModel: Home.ViewModel? {
        didSet {
            guard let viewModel = viewModel else { return }
            //
        }
    }
    
    weak var delegate: HomeViewDelegate?
    
    // MARK: - Initialization
    init() {
        super.init(frame: .zero)
        self.setUpView()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension HomeView: TLIOViewCode {

    func setUpHierarchy() {
        addSubview(titleLabel)
        addSubview(emptyStateImage)
        addSubview(emptyStateTitleLabel)
        addSubview(emptyStateInstructionsLabel)
        addSubview(howDoesThisWorkButton)
    }
    
    func setUpConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        emptyStateImage.translatesAutoresizingMaskIntoConstraints = false
        emptyStateTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        emptyStateInstructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        howDoesThisWorkButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),
            
            emptyStateImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            emptyStateImage.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            emptyStateImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            emptyStateImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            emptyStateImage.heightAnchor.constraint(equalToConstant: 200),
            
            emptyStateTitleLabel.topAnchor.constraint(equalTo: emptyStateImage.bottomAnchor, constant: 20),
            emptyStateTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            emptyStateInstructionsLabel.topAnchor.constraint(equalTo: emptyStateTitleLabel.bottomAnchor, constant: 10),
            emptyStateInstructionsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            emptyStateInstructionsLabel.heightAnchor.constraint(equalToConstant: 80),
            emptyStateInstructionsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            emptyStateInstructionsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            howDoesThisWorkButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            howDoesThisWorkButton.topAnchor.constraint(equalTo: emptyStateInstructionsLabel.bottomAnchor, constant: 25)
        ])
    }
    
    func setUpConfigurations() {
        backgroundColor = .white
    }

}
