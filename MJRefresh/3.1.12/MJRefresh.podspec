Pod::Spec.new do |s|
  s.name         = 'MJRefresh'
  s.version      = '3.1.12'
  s.summary      = 'An easy way to use pull-to-refresh'
  s.homepage     = 'https://github.com/CoderMJLee/MJRefresh'
  s.license      = 'MIT'
  s.authors      = {'MJ Lee' => '199109106@qq.com'}
  s.platform     = :ios, '6.0'
  s.source       = {:git => 'https://github.com/HerenMA/MJRefresh.git', :tag => s.version}
  
  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.resource     = 'MJRefresh/MJRefresh.bundle'
    ss.source_files = 'MJRefresh/**/*.{h,m}'
  end
  
  s.subspec 'Framework' do |ss|
    ss.resource   = 'MJRefresh/MJRefresh.bundle'
    ss.ios.vendored_framework   = 'ios/MJRefresh.framework'
  end
  
end
