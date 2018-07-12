import Foundation
import UIKit

class Router {
    static func navigate(from: UIViewController, to destination: ApplicationCoordinator) {
        switch destination {
        case .initial:
            print("screen1")
        case .subsequent:
            let viewController = UIStoryboard(name: "Subsequent", bundle: nil).instantiateViewController(withIdentifier: "SubsequentController" )
            from.present(viewController, animated: false)
        }
    }
}
