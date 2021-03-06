Pod::Spec.new do |s|
  s.name         = 'YYCategories'
  s.summary      = 'A manager to get iOS keyboard views, frames and transform.'
  s.version      = '1.0.4'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/ibireme/YYCategories'
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source       = { :git => 'https://github.com/HerenMA/YYCategories.git', :tag => s.version.to_s }

  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.libraries = 'z'

    ss.source_files = 'YYCategories/**/*.{h,m}'
    ss.public_header_files = 'YYCategories/**/*.{h}'
  
    non_arc_files = 'YYCategories/Foundation/NSObject+YYAddForARC.{h,m}', 'YYCategories/Foundation/NSThread+YYAdd.{h,m}'
    ss.ios.exclude_files = non_arc_files
    ss.subspec 'no-arc' do |sna|
      sna.requires_arc = false
      sna.source_files = non_arc_files
    end
  end

  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework = 'ios/YYCategories.framework'
  end

  s.frameworks = 'UIKit', 'CoreFoundation' ,'QuartzCore', 'CoreGraphics', 'CoreImage', 'CoreText', 'ImageIO', 'Accelerate'

end
