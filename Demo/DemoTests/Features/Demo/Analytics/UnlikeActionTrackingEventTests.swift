//
//  UnlikeActionTrackingEventTests.swift
//  MomentsTests
//
//  Created by Jake Lin on 16/11/20.
//

import Foundation

import Quick
import Nimble
import FirebaseAnalytics
@testable import Demo

final class UnlikeActionTrackingEventTests: QuickSpec {
    override func spec() {
        describe("UnlikeActionTrackingEvent") {
            var testSubject: UnlikeActionTrackingEvent!

            beforeEach {
                testSubject = UnlikeActionTrackingEvent(momentID: "0", userID: "1")
            }

            context("FirebaseActionTrackingEvent") {
                it("should conform to `FirebaseActionTrackingEvent`") {
                    expect(testSubject).to(beAKindOf(FirebaseActionTrackingEvent.self))
                }

                it("should return parameters correctly") {
                    expect(testSubject.parameters[AnalyticsParameterItemID] as? String).to(equal("moment-id-0-user-id-1"))
                    expect(testSubject.parameters[AnalyticsParameterItemName] as? String).to(equal("moment-unlike"))
                }
            }
        }
    }
}
