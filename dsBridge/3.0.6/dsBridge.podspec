Pod::Spec.new do |s|
  s.name         = "dsBridge"
  s.version      = "3.0.6"
  s.summary      = "An ios bridge for calling functions synchronously and asynchronously between JavaScript and Object-C in WKWebView/UIWebView"
  s.description  = <<-DESC
 An javascript bridge for calling functions synchronously and asynchronously
                   DESC
  s.homepage     = "https://github.com/wendux/DSBridge-IOS.git"
  s.license      = "MIT"
  s.author       = { "lazydu" => "824783146@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/HerenMA/DSBridge.git", :tag => s.version }

  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files  =  "dsbridge/*"
    ss.public_header_files = "dsbridge/*.h"
  end
  
  #s.subspec 'Framework' do |ss|
  #  ss.ios.vendored_framework   = 'ios/dsBridge.framework'
  #end

  s.frameworks = 'WebKit'
  
end
