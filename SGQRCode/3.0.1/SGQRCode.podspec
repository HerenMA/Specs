Pod::Spec.new do |s|
  s.name         = 'SGQRCode'
  s.version      = '3.0.1'
  s.summary      = 'An easy way to use BarCode and QRCode scan library for iOS'
  s.homepage     = 'https://github.com/kingsic/SGQRCode'
  s.license      = 'Apache-2.0'
  s.authors      = {'kingsic' => 'kingsic@126.com'}
  s.platform     = :ios, '8.0'
  s.source       = {:git => 'https://github.com/HerenMA/SGQRCode.git', :tag => s.version}
    
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'SGQRCode/**/*.{h,m}'
    ss.resource     = 'SGQRCode/SGQRCode.bundle'
  end
  
  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/SGQRCode.framework'
    ss.resource     = 'SGQRCode/SGQRCode.bundle'
  end
  
  s.frameworks = 'UIKit', 'Photos','AVFoundation'
  
end
