Pod::Spec.new do |s|
  s.name             = "JSBadgeView"
  s.version          = '1.4.1'
  s.summary          = "Customizable UIKit badge view like the one on applications in the iOS springboard."
  s.description      = "Customizable UIKit badge view like the one on applications in the iOS springboard. Very optimized for performance: drawn entirely using CoreGraphics."
  s.homepage         = "https://github.com/JaviSoto/JSBadgeView"
  s.license          = 'MIT'
  s.author           = { 'Javier Soto' => 'ios@javisoto.es' }
  s.source           = { :git => 'https://github.com/HerenMA/JSBadgeView.git', :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'JSBadgeView/Classes/**/*'
  end
  
  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework = 'ios/JSBadgeView.framework'
  end

  s.frameworks = 'QuartzCore'
end
