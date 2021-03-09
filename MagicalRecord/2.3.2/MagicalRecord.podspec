Pod::Spec.new do |s|
  s.name     = 'MagicalRecord'
  s.version  = '2.3.2'
  s.license  = 'MIT'
  s.summary  = 'Super Awesome Easy Fetching for Core Data 1!!!11!!!!1!.'
  s.homepage = 'http://github.com/magicalpanda/MagicalRecord'
  s.author   = { 'Saul Mora' => 'saul@magicalpanda.com', 'Tony Arnold' => 'tony@thecocoabots.com' }
  s.source   = { :git => 'https://github.com/HerenMA/MagicalRecord.git', :tag => s.version.to_s }
  s.description  = 'Handy fetching, threading and data import helpers to make Core Data a little easier to use.'

  s.ios.deployment_target = '6.1'
  s.osx.deployment_target = '10.8'

  s.ios.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.ios.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |sp|
    sp.framework    = 'CoreData'
    sp.header_dir   = 'MagicalRecord'
    sp.source_files = 'MagicalRecord/**/*.{h,m}'
    sp.exclude_files = '**/MagicalRecordShorthandMethodAliases.h'
    sp.prefix_header_contents = <<-EOS
    #import <CoreData/CoreData.h>
    #import <MagicalRecord/MagicalRecord.h>
    EOS
  end

  s.subspec 'ShorthandMethodAliases' do |sp|
    sp.source_files = '**/MagicalRecordShorthandMethodAliases.h'
  end

  s.subspec 'CocoaLumberjack' do |sp|
    sp.dependency 'MagicalRecord/Core'
    sp.dependency 'CocoaLumberjack', '~> 2.0'
  end

  s.subspec 'Framework' do |ss|
    ss.framework    = 'CoreData'
    ss.ios.vendored_framework   = 'ios/MagicalRecord.framework'
    ss.osx.vendored_framework   = 'osx/MagicalRecord.framework'
  end
  
end
