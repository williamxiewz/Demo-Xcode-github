source 'https://cdn.cocoapods.org/'

workspace './Demo.xcworkspace'
project './Demo/Demo.xcodeproj'

platform :ios, '14.0'
use_frameworks!

# ignore all warnings from all dependencies
inhibit_all_warnings!

#开发专用库
def dev_pods
  pod 'SwiftLint', '= 0.42.0', configurations: ['Debug']
  pod 'SwiftGen', '= 6.4.0', configurations: ['Debug']
end
#核心库
def core_pods
  pod 'RxSwift', '= 5.1.1'
  pod 'RxRelay', '= 5.1.1'
  pod 'Alamofire', '= 5.3.0'
end
#第三方框架
def thirdparty_pods
  pod 'Firebase/Analytics', '= 7.0.0'
  pod 'Firebase/Crashlytics', '= 7.0.0'
  pod 'Firebase/RemoteConfig', '= 7.0.0'
  pod 'Firebase/Performance', '= 7.0.0'
end
#ui相关
def ui_pods
  pod 'SnapKit', '= 5.0.1'
  pod 'Kingfisher', '= 5.15.6'
  pod 'RxCocoa', '= 5.1.1'
  pod 'RxDataSources', '= 4.0.1'
end
#内测
def internal_pods
  pod 'DesignKit', :path => './Frameworks/DesignKit', :inhibit_warnings => false
end
#测试
def test_pods
  pod 'Quick', '= 3.0.0'
  pod 'Nimble', '= 9.0.0'
  pod 'RxTest', '= 5.1.1'
  pod 'RxBlocking', '= 5.1.1'
end

#项目
target 'Demo' do
  dev_pods
  core_pods
  thirdparty_pods
  ui_pods
  internal_pods
end

#单元测试
target 'DemoTests' do
  core_pods
  thirdparty_pods
  test_pods
end


post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
      config.build_settings["EXCLUDED_ARCHS[sdk=iphonesimulator*]"] = "arm64"
    end
  end
end

