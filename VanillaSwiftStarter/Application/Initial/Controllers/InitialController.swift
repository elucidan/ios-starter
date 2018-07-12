
import UIKit
import ReSwift
import Dip_UI

class InitialController: UIViewController {

    var store = Store<InitialState>(reducer: initialScreenReducer, state: nil)

    var fetchData: IFetchData?

    override func viewDidLoad() {
        super.viewDidLoad()
        store.subscribe(self)
    }

    // switch out text
    @IBOutlet weak var changeTextButton: UILocalizedButton!
    
    @IBOutlet weak var helloMessage: UILocalizedLabel!
    @IBAction func ChangeMessage(_ sender: UILocalizedButton) {
        let model = InitialModel()
        model.changedMessage = InitialStrings.changedWelcomeMessage.localized
        store.dispatch(InitialActions(status: .switchOutText, initalModel: model));
    }

    // fetch some data
    @IBAction func fetchData(_ sender: UILocalizedButton) {
        store.dispatch((fetchData?.getMessage)!)
    }



    // go to another screen

    @IBAction func switchScreen(_ sender: UIButton) {
        store.dispatch(InitialActions(status: .switchScreens, initalModel: nil))
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        store.unsubscribe(self)
    }
}


