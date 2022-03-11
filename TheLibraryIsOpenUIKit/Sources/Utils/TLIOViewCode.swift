import Foundation

public protocol TLIOViewCode {
    
    // Creates view hierarchy
    func setUpHierarchy()
    
    // Creation and activation of constraints
    func setUpConstraints()
    
    // Set up components
    func setUpConfigurations()
    
}

public extension TLIOViewCode {

    func setUpView() {
        setUpHierarchy()
        setUpConstraints()
        setUpConfigurations()
    }

}
