import Foundation

enum Home {
    
    struct Response: Decodable {
        
        
        
    }

    struct ViewModel {
        
        var podcasts: [Podcast]
        var displayPodcastList: Bool = false
        var sortOption: Int
        var viewOption: Int
        
        // Alerts
        var alertTitle: String = .empty
        var alertMessage: String = .empty
        var showAlert: Bool = false
        
    }
    
}
