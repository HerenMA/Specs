Pod::Spec.new do |s|
  s.name         = 'KVOController'
  s.version      = '1.2.0'
  s.license      =  { :type => 'BSD' }
  s.homepage     = 'https://github.com/facebook/KVOController'
  s.authors      = { 'Kimon Tsinteris' => 'kimon@mac.com', 'Nikita Lutsenko' => 'nlutsenko@me.com' }
  s.summary      = 'Simple, modern, thread-safe key-value observing.'
  s.description  = <<-DESC
                      KVOController builds on Cocoa's time-tested key-value observing implementation. It offers a simple, modern API, that is also thread safe.
                      Benefits include:
                      Notification using blocks, custom actions, or NSKeyValueObserving callback.
                      No exceptions on observer removal.
                      Implicit observer removal on controller dealloc.
                      Thread-safety with special guards against observer resurrection.
                      DESC
  s.source       = { :git => 'https://github.com/HerenMA/KVOController.git', :tag => s.version.to_s }

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.7'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.tvos.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  s.tvos.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=appletvsimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'FBKVOController/*.{h,m}'
  end

  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/KVOController.framework'
    ss.osx.vendored_framework   = 'osx/KVOController.framework'
    ss.watchos.vendored_framework   = 'watchos/KVOController.framework'
    ss.tvos.vendored_framework   = 'tvos/KVOController.framework'
  end
  
end
