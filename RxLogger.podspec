Pod::Spec.new do |s|
  s.name         = "RxLogger"
  s.version      = "0.0.1"
  s.summary      = "Color Log for RxSwift"
  s.description  = "Color Log for RxSwift, use XcodeColors"
  s.homepage     = "https://github.com/DianQK/RxLogger"
  s.license      = { :type => "MIT", :file => "License" }
  s.author             = { "DianQK" => "xiaoqing@dianqk.org" }
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.source       = { :git => "https://github.com/DianQK/RxLogger.git", :tag => s.version }
  s.source_files = 'Sources/*.swift'
  s.dependency 'RxSwift', '~> 2.2.0'
  s.frameworks = 'Foundation'
end
