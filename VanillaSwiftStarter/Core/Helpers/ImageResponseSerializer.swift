//
//  ImageResponseSerializer.swift
//
//
//  Created by David Boyle on 24/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

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
