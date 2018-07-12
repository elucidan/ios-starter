import UIKit
@IBDesignable final class UILocalizedNavigationItem: UINavigationItem {
    @IBInspectable var tableName: String? {
        didSet {
            guard let tableName = tableName else { return }
            title = title?.localized(tableName: tableName)
        }
    }
}
