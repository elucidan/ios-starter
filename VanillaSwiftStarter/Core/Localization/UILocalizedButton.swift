import UIKit
@IBDesignable class UILocalizedButton: UIButton {
    
    @IBInspectable var tableName: String? {
        didSet {
            guard let tableName = tableName else { return }
            let title = self.title(for: .normal)?.localized(tableName: tableName)
            setTitle(title, for: .normal)
        }
    }
}
