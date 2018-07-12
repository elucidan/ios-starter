import UIKit
protocol IImageResponseSerializer {
    func fetchImage(fromUrl url: URL, completion: @escaping(UIImageView) -> Void)
}
