source 'https://cdn.cocoapods.org/'
#workspace './Demo.xcworkspace'
#project './Demo.xcodeproj'
inhibit_all_warnings!

platform :ios, '14.0'
use_frameworks!

def internal_pods
  pod 'DesignKit', :path => './Frameworks/DesignKit', :inhibit_warnings => false
end


target 'Demo' do
  
  
  internal_pods
  
  pod 'RxSwift'
  pod 'SwiftLint'
  
end
