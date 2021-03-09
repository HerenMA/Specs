Pod::Spec.new do |s|
  s.name         = "MMDrawerController"
  s.version      = "0.6.0"
  s.summary      = "A lightweight, easy-to-use side drawer navigation controller."
  s.homepage     = "https://github.com/mutualmobile/MMDrawerController"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Kevin Harwood" => "kevin.harwood@mutualmobile.com" }
  s.source       = { :git => "https://github.com/HerenMA/MMDrawerController.git", :tag => s.version }
  s.platform     = :ios, '7.0'

  s.screenshots = [ "http://mutualmobile.github.io/MMDrawerController/ExampleImages/example1.png",
                       "http://mutualmobile.github.io/MMDrawerController/ExampleImages/example2.png" ]
  
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
    
  s.subspec 'Core' do |ss|
    ss.source_files = 'MMDrawerController/MMDrawerController.{h,m}', 'MMDrawerController/UIViewController+MMDrawerController*'
  end
  
  s.subspec 'MMDrawerBarButtonItem' do |ss|
      ss.source_files = 'MMDrawerController/MMDrawerBarButtonItem.{h,m}'
      ss.dependency 'MMDrawerController/Core'
    end
    
  s.subspec 'MMDrawerVisualStates' do |ss|
      ss.source_files = 'MMDrawerController/MMDrawerVisualState.{h,m}'
      ss.dependency 'MMDrawerController/Core'
    end
    
  s.subspec 'Subclass' do |ss|
      ss.source_files = 'MMDrawerController/MMDrawerController+Subclass.h'
      ss.dependency 'MMDrawerController/Core'
  end
  
  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/MMDrawerController.framework'
  end
  
  s.framework  = 'QuartzCore'
  
end
