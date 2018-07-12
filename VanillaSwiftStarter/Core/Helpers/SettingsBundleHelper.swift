import Foundation
import SwiftKeychainWrapper
import Alamofire

class SettingsBundleHelper {
    struct SettingsBundleKeys {
        static let RemoveCredentials = "REMOVE_APP_CREDENTIALS"
        static let RemoveCachedResponses = "REMOVE_CACHED_ITEMS"
        static let BuildVersionKey = "build_preference"
        static let AppVersionKey = "version_preference"
    }

    class func setVersionAndBuildNumber() {
        let version: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
        UserDefaults.standard.set(version, forKey: "version_preference")
        let build: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
        UserDefaults.standard.set(build, forKey: "build_preference")
    }
    
    class func clearCaches() {
        if UserDefaults.standard.bool(forKey: SettingsBundleKeys.RemoveCachedResponses) {
            UserDefaults.standard.set(false, forKey: SettingsBundleKeys.RemoveCachedResponses)
            URLCache.shared.removeAllCachedResponses()
            let imageDownloader = UIImageView.af_sharedImageDownloader
            let imageCache = imageDownloader.imageCache
            imageCache?.removeAllImages()
        }
    }
}
