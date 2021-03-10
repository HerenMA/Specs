Pod::Spec.new do |s|
  s.name         = "MOFSPickerManager"
  s.version      = "1.0.9"
  s.summary      = "PickerManager for iOS"
  s.description  = <<-DESC
    iOS PickerView整合，一行代码调用（省市区三级联动+日期选择+普通选择）
                   DESC
  s.homepage     = "https://github.com/memoriesofsnows/MOFSPickerManagerDemo.git"
  s.license      = "MIT"
  s.author       = { "memoriesofsnows" => "luoyuant@163.com" }
  s.social_media_url   = "http://www.jianshu.com/u/f4284f2cc646"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/HerenMA/MOFSPickerManager.git", :tag => s.version.to_s }
  
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files  = "MOFSPickerManagerDemo/MOFSPickerManager/**/*.{h,m}"
    ss.resources = "MOFSPickerManagerDemo/MOFSPickerManager/**/*.{xml}"
  end

  s.subspec 'Framework' do |ss|
    ss.ios.vendored_framework   = 'ios/MOFSPickerManager.framework'
    ss.resources = "MOFSPickerManagerDemo/MOFSPickerManager/**/*.{xml}"
  end
  
end
