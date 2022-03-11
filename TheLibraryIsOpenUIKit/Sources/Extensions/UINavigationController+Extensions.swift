import UIKit

public extension UINavigationController {
    
    func setNavigationAttibutes(barTintColor: UIColor, foregroundColor: UIColor) {
        navigationBar.barTintColor = barTintColor
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: foregroundColor]
        navigationBar.isTranslucent = false
        navigationBar.setBackgroundImage(nil, for: UIBarMetrics.default)
    }
    
}
