import SnapshotTesting
import SwiftUI
import XCTest
@testable import LocalizationSwiftUI

final class LocalizationSwiftUISnapshotTests: XCTestCase {
    func verifyRendering(for device: ViewImageConfig, style: UIUserInterfaceStyle = .dark, testName: String) {
        // Given
        let sut = ContentView(stepsDataSource: StepsModel().dataSource)

        // When
        let wrapper = UIHostingController(rootView: sut)
        wrapper.overrideUserInterfaceStyle = style

        // Verify
        assertSnapshot(matching: wrapper, as: .image(on: device), testName: testName)
    }
    func test_initialRendering_forEnglishLocaleAtDarkMode() {
        verifyRendering(for: .iPhone8, testName: #function)
        verifyRendering(for: .iPhone8Plus, testName: #function)
        verifyRendering(for: .iPhone12ProMax, testName: #function)
        verifyRendering(for: .iPhone8(.landscape), testName: #function)
        verifyRendering(for: .iPhone8Plus(.landscape), testName: #function)
        verifyRendering(for: .iPhone12ProMax(.landscape), testName: #function)
    }

    func test_initialRendering_forEnglishLocaleAtLightMode() {
        verifyRendering(for: .iPhone8, style: .light, testName: #function)
        verifyRendering(for: .iPhone8Plus, style: .light, testName: #function)
        verifyRendering(for: .iPhone12ProMax, style: .light, testName: #function)
        verifyRendering(for: .iPhone8(.landscape), style: .light, testName: #function)
        verifyRendering(for: .iPhone8Plus(.landscape), style: .light, testName: #function)
        verifyRendering(for: .iPhone12ProMax(.landscape), style: .light, testName: #function)
    }
}