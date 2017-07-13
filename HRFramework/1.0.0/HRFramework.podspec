Pod::Spec.new do |s|
    s.name         = "HRFramework"
    s.summary      = "a HerenMA framework for iOS."
    s.version      = "1.0.0"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://github.com/herenMA/HRFramework"
    s.source       = { :git => "https://github.com/herenMA/HRFramework.git", :tag => s.version }
    s.requires_arc = true
    s.platform     = :ios, "7.0"
    s.ios.deployment_target = "7.0"
    s.frameworks = "Foundation", "UIKit"
    s.vendored_frameworks = "HRFramework/Classes/HRFramework.framework"

    s.dependency 'AFNetworking', '~> 3.1.0'
    s.dependency 'YYCache', '~> 1.0.4'
end
