Pod::Spec.new do |s|
    s.name         = "HRFramework"
    s.summary      = "HerenMA framework for iOS."
    s.version      = "1.0.7"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/HerenMA/HRFramework"
    s.source       = { :git => "https://github.com/HerenMA/HRFramework.git", :tag => s.version }
    s.requires_arc = true
    s.platform     = :ios, "9.0"
    s.ios.deployment_target = "9.0"
    s.frameworks = "Foundation", "UIKit", "AVFoundation", "CoreLocation", "CoreImage"
    s.vendored_frameworks = "HRFramework/Classes/HRFramework.framework"

    s.dependency 'AFNetworking', '~> 4.0.1'
    s.dependency 'YYCategories', '~> 1.0.4'
    s.dependency 'YYModel', '~> 1.0.4'
    s.dependency 'YYWebImage', '~> 1.0.6'
    s.dependency 'JPImageresizerView', '~> 0.4.9'
end