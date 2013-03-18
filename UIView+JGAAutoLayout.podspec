Pod::Spec.new do |s|
  s.name         = "UIView+JGAAutoLayout"
  s.version      = "0.0.1"
  s.summary      = "Auto-layout helpers."
  s.homepage     = "https://github.com/grantjk/UIView-JGAAutoLayout"
  s.license      = 'MIT'
  s.author       = { "John Grant" => "johnkgrant@gmail.com" }
  s.source       = { :git => "https://github.com/grantjk/UIView-JGAAutoLayout.git", :commit => s.version }
  s.platform     = :ios, '6.0'
  s.source_files = '*.{h,m}'
  s.requires_arc = true
end
