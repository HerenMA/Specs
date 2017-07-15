Pod::Spec.new do |s|
    s.name         = "TIMSDK"
    s.summary      = "Tencent IM SDK."
    s.version      = "2.5.6"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.authors      = { "MONO" => "yinjianjun1@herenit.com" }
    s.homepage     = "https://bitbucket.org/HerenMA/timsdk"
    s.source       = { :git => "https://bitbucket.org/HerenMA/TIMSDK.git", :tag => s.version }
    s.requires_arc = true
    s.platform     = :ios, "7.0"
    s.ios.deployment_target = "7.0"
    s.frameworks = "CoreTelephony", "SystemConfiguration"
    s.vendored_frameworks = "TIMSDK/Classes/*.framework"
    s.libraries = "c++", "stdc++.6", "z", "sqlite3"
end
