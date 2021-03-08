Pod::Spec.new do |s|
  s.name     = 'MGSwipeTableCell'
  s.version  = '1.5.6'
  s.author   = { 'Imanol Fernandez' => 'mortimergoro@gmail.com' }
  s.homepage = 'https://github.com/MortimerGoro/MGSwipeTableCell'
  s.summary  = 'An easy to use UITableViewCell subclass that allows to display swipeable buttons with a variety of transitions'
  s.license  = 'MIT'
  s.source   = { :git => 'https://github.com/HerenMA/MGSwipeTableCell.git', :tag => s.version.to_s }
  s.platform = :ios
  s.ios.deployment_target = '5.0'
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'MGSwipeTableCell/**/*.{h,m}'
    ss.public_header_files = 'MGSwipeTableCell/**/*.{h}'
  end
  
  #s.subspec 'Framework' do |ss|
  #  ss.ios.vendored_framework   = 'ios/MGSwipeTableCell.framework'
  #end
    
end
