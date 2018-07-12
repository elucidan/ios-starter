import UIKit
class FakeImageResponseSerializer: IImageResponseSerializer {
    func fetchImage(fromUrl url: URL, completion: @escaping (UIImageView) -> Void) {
        let imageView = UIImageView()

        imageView.image = UIImage(named: "img066")
        Thread.sleep(forTimeInterval: 0.1)
        completion(imageView)
    }
}
