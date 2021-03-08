Pod::Spec.new do |s|
  s.name         = "TIMSDK"
  s.summary      = "Tencent QCloud IM SDK for iOS."
  s.version      = "2.5.6"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "MONO" => "yinjianjun1@herenit.com" }
  s.homepage     = "https://github.com/HerenMA/TIMSDK"
  s.source       = { :http => "http://dldir1.qq.com/hudongzhibo/im/IM_iOS_SDK_2.5.6.zip", :sha1 => "40e82c65e1a95d0623b2d236a8394eee77b6f6b0" }
  s.requires_arc = true
  s.xcconfig     = { "OTHER_LDFLAGS" => "-ObjC"}
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.frameworks = "Foundation", "UIKit", "CoreTelephony", "SystemConfiguration"
  s.vendored_frameworks = "IM_iOS_SDK_2.5.6/libs/IMCore.framework", "IM_iOS_SDK_2.5.6/libs/ImSDK.framework", "IM_iOS_SDK_2.5.6/libs/QALSDK.framework", "IM_iOS_SDK_2.5.6/libs/TLSSDK.framework"
  s.library      = "c++", "stdc++.6", "z", "sqlite3"
    
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end
