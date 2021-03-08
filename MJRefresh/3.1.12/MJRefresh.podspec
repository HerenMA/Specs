Pod::Spec.new do |s|
  s.name         = 'MJRefresh'
  s.version      = '3.1.12'
  s.summary      = 'An easy way to use pull-to-refresh'
  s.homepage     = 'https://github.com/CoderMJLee/MJRefresh'
  s.license      = 'MIT'
  s.authors      = {'MJ Lee' => '199109106@qq.com'}
  s.platform     = :ios, '6.0'
  s.source       = {:git => 'https://github.com/HerenMA/MJRefresh.git', :tag => s.version}
  s.resource     = 'MJRefresh/MJRefresh.bundle'
    
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'MJRefresh/**/*.{h,m}'
  end
  
  #s.subspec 'Framework' do |ss|
  #  ss.ios.vendored_framework   = 'ios/MJRefresh.framework'
  #end
  
end
