import Foundation
extension Bundle {
    static func getStringFor(_ value: String) -> String? {
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist"), let dict = NSDictionary(contentsOfFile: path) as? [String: AnyObject] {
            return dict[value] as? String
        } else {
            return nil
        }
    }
}

