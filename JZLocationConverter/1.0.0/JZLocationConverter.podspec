Pod::Spec.new do |s|
  s.name     = 'JZLocationConverter'
  s.version  = '1.0.0'
  s.license  = { :type => 'MIT' }
  s.summary  = '坐标转换工具.'
  s.homepage = 'https://github.com/JackZhouCn'
  s.authors  = { 'JackZhou' => '4686150@qq.com' }
  s.source   = {
    :git => 'https://github.com/HerenMA/JZLocationConverter.git',
    :tag => s.version
  }
  s.ios.deployment_target = '6.0'
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'JZLocationConverter/*.{h,m}'
  end
  
  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/JZLocationConverter.framework'
  end
  
  s.frameworks = 'CoreLocation'

end
