Pod::Spec.new do |s|
  s.name         = "WeChatOpenSDK_NoPay"
  s.summary      = "Includes the following WeChat features: Share to Moments, Log In via WeChat, Save to Favorites, WeChat Pay, etc."
  s.version      = "1.8.9"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "MONO" => "yinjianjun1@herenit.com" }
  s.homepage     = "https://github.com/HerenMA/WeChatOpenSDK_NoPay"
  s.source       = { :git => "https://github.com/HerenMA/WeChatOpenSDK_NoPay.git", :tag => s.version }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source_files = "ios/*.{h}"
  s.vendored_libraries = "ios/*.a"
  s.frameworks = "SystemConfiguration", "Security", "UIKit", "CoreTelephony", "WebKit", "CFNetwork"
  s.libraries = "z", "sqlite3.0", "c++"
end
