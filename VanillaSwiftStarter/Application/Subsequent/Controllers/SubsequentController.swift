import UIKit
import Dip_UI

class SubsequentController: UIViewController {
    var imageResponseSerializer: IImageResponseSerializer?

    @IBOutlet weak var bannerImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageResponseSerializer?.fetchImage(fromUrl: URL(string: "test")!) { response in
            if response.image != nil {
                self.bannerImage.image = response.image
            }
        }
    }
}


