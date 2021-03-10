Pod::Spec.new do |s|
  s.name     = 'SCSiriWaveformView'
  s.version  = '1.1.1'
  s.platform = :ios
  s.ios.deployment_target = '7.0'
  s.summary  = 'UIView subclass that reproduces the waveform effect seen in Siri on iOS 7'
  s.homepage = 'https://github.com/stefanceriu/SCSiriWaveformView'
  s.author   = { 'Stefan Ceriu' => 'stefan.ceriu@yahoo.com' }
  s.social_media_url = 'https://twitter.com/stefanceriu'
  s.source   = { :git => 'https://github.com/HerenMA/SCSiriWaveformView.git', :tag => s.version.to_s }
  s.license      = { :type => 'MIT License', :file => 'LICENSE' }
  s.screenshots = ["https://drive.google.com/uc?export=download&id=0ByLCkUO90ltoSVloLXRKSC1DbEk"]
  
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'SCSiriWaveformView/*'
  end

  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/SCSiriWaveformView.framework'
  end
  
  s.frameworks = 'UIKit', 'QuartzCore', 'CoreGraphics', 'Foundation', 'AVFoundation'

end
