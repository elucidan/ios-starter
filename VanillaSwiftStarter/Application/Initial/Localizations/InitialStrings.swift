import Foundation
enum InitialStrings: String, ILocalizable {

    case welcomeMessage = "hello_message"
    case changedWelcomeMessage = "changed_hello_message"
    case textButton = "text_button"
    case fetchData = "fetch_data"
    case switchScreen = "switch_screen"

    var tableName: String {
        return "InitialPage"
    }

}
