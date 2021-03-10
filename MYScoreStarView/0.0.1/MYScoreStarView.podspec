Pod::Spec.new do |s|
  s.name         = "MYScoreStarView"
  s.version      = "0.0.1"
  s.summary      = "iOS 星星评分视图控件，点击和滑动评分。"
  s.description  = <<-DESC
                   iOS 星星评分视图控件，点击和滑动评分。
		   DESC
  s.homepage     = "https://github.com/sunjinshuai/MYScoreStarView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "sunjinshuai" => "s_mike@163.com" }
  s.platform     = :ios
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/HerenMA/MYScoreStarView.git", :tag => s.version
  }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.source_files  = "MYScoreStarView/MYScoreStarView/**/*.{h,m}"
  end
  
  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/MYScoreStarView.framework'
  end
  
end
