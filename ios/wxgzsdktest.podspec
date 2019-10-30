#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'wxgzsdktest'
  s.version          = '0.0.1'
  s.summary          = 'A new flutter plugin project.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.vendored_frameworks = ['Classes/OperationToolSDK.framework','Classes/WXGZ_SDK.framework']
  s.resources =  ['Classes/OperationToolSDK.bundle','Classes/WXGZ_SDK.bundle']
  s.dependency 'Flutter'

  s.ios.deployment_target = '8.0'
end

