Pod::Spec.new do |s|
    s.name         = "HRFramework"
    s.summary      = "HerenMA framework for iOS."
    s.version      = "1.0.0"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/herenMA/HRFramework"
    s.source       = { :git => "https://github.com/herenMA/HRFramework.git", :tag => s.version }
    s.requires_arc = true
    s.platform     = :ios, "8.0"
    s.ios.deployment_target = "8.0"
    s.frameworks = "Foundation", "UIKit", "AddressBook", "AVFoundation", "CoreLocation", "CoreImage"
    s.vendored_frameworks = "HRFramework/Classes/HRFramework.framework"

    s.dependency 'AFNetworking', '~> 3.1.0'
    s.dependency 'YYCategories', '~> 1.0.4'
    s.dependency 'YYModel', '~> 1.0.4'
    s.dependency 'YYWebImage', '~> 1.0.5'
end

