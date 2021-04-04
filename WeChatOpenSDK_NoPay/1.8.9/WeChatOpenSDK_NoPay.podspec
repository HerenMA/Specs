Pod::Spec.new do |s|
  s.name         = "WeChatOpenSDK_NoPay"
  s.summary      = "Includes the following WeChat features: Share to Moments, Log In via WeChat, Save to Favorites, WeChat Pay, etc."
  s.version      = "1.8.9"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "weixin" => "weixin-open@qq.com" }
  s.homepage     = "https://github.com/HerenMA/WeChatOpenSDK_NoPay"
  s.source       = { :http => "https://res.wx.qq.com/op_res/6_LTcOKImd1OkrGr3ZvVyc6JnrqW2BQc0zEHVqI6haRbGOhbvyBxHArFkhL7YhEF6IwtWQysWihXejr9YuMA1w", :type => "zip" }
  s.requires_arc = false
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source_files = "OpenSDK1.8.9_No_Pay/*.{h}"
  s.vendored_libraries = "OpenSDK1.8.9_No_Pay/*.a"
  s.frameworks = "SystemConfiguration", "Security", "UIKit", "CoreTelephony", "WebKit", "CFNetwork"
  s.libraries = "z", "sqlite3.0", "c++"
end
