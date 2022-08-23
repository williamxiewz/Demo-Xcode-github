// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
    
    
   
    
   
    
   
    
   
    
	func customLane() {
	desc("Description of what the lane does")
		// add actions here: https://docs.fastlane.tools/actions
        puts(message: "Lint code using SwiftLint")
	}
    
    func lintcodeLane()  {
        desc("Lint code")
        puts(message: "Lint code using SwfitLint")

        swiftlint(mode: "lint", path: nil, outputFile: nil, configFile: "./Demo/.swiftlint.yml", strict: false, files: nil, ignoreExitStatus: true, raiseIfSwiftlintError: true, reporter: nil, quiet: true, executable: "../Pods/SwiftLint/swiftlint", format: false, noCache: false, compilerLogPath: nil)
    }
    
    
}

/// Apple 官方渠道
extension Fastfile{
    
    /// 上传到 TestFlight
    func testflightLane()  {
        
    }
    
    
    /// 上传到 App Store
    func appstoreLane()  {
        
    }
    
    /// 上传到 Apple Bussiness Manager
    func abmLane()  {
        
    }
    
}

/// 第三方渠道
extension Fastfile{
    /// 上传到蒲公英
    func pygerLane()  {
        
    }
}
