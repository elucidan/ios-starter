//
//  IImageResponseSerializer.swift
//
//
//  Created by David Boyle on 25/01/2018.
//  Copyright © 2018 elucidan. All rights reserved.
//

import UIKit
protocol IImageResponseSerializer {
    func fetchImage(fromUrl url: URL, completion: @escaping(UIImageView) -> Void)
}
