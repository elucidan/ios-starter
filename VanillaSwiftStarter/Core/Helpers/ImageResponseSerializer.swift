import UIKit
import AlamofireImage
import Alamofire

class ImageResponseSerializer: IImageResponseSerializer {
    var imageView: UIImageView?
    
    func fetchImage(fromUrl url: URL, completion: @escaping(UIImageView) -> Void) {
        Alamofire.request(url, method: .get).responseImage {response in
            let imageView = UIImageView()
            imageView.image = response.result.value
            completion(imageView)
        }
    }
}
