Pod::Spec.new do |s|
  s.name         = "JGAAutoLayout"
  s.version      = "0.0.1"
  s.summary      = "Auto-layout helpers."
  s.homepage     = "https://github.com/grantjk/UIView-JGAAutoLayout"
  s.license      = 'MIT'
  s.author       = { "John Grant" => "johnkgrant@gmail.com" }
  s.source       = { :git => "https://github.com/grantjk/UIView-JGAAutoLayout.git", :commit => "b9556abf7652d2faa6531b2098a994439072d58e" }
  s.platform     = :ios, '6.0'
  s.source_files = '*.{h,m}'
  s.requires_arc = true
end
