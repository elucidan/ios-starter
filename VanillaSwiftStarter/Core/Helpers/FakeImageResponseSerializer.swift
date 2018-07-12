//
//  FakeImageResponseSerializer.swift
//
//
//  Created by David Boyle on 25/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import UIKit
class FakeImageResponseSerializer: IImageResponseSerializer {
    func fetchImage(fromUrl url: URL, completion: @escaping (UIImageView) -> Void) {
        let imageView = UIImageView()

        imageView.image = UIImage(named: "img066")
        Thread.sleep(forTimeInterval: 0.1)
        completion(imageView)
    }
}
