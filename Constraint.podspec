Pod::Spec.new do |s|
  s.name         = 'Constraint'
  s.version      = 'v1.2.0'
  s.license      = { :type => 'MIT' }
  s.homepage     = 'https://github.com/sora0077/Constraint'
  s.authors      = { 'sora0077' => 't.hayashi0077+github@gmail.com' }
  s.summary      = 'AutoLayout support utilities'
  s.source       = { :git => 'https://github.com/sora0077/Constraint.git', :tag => s.version.to_s }

  s.source_files = 'Sources/**/*.swift'
  s.framework    = 'UIKit'

  s.ios.deployment_target = "9.0"
end
