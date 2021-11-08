func test_initialRendering_forSpanishLocaleAtDarkMode() throws {
    // This test will be skipped if current device's languege is English
    try XCTSkipIf(Locale.current.languageCode == "en") 
    verifyRendering(for: .iPhone8, testName:  #function)
    verifyRendering(for: .iPhone8Plus, testName: #function)
    verifyRendering(for: .iPhone12ProMax, testName: #function)
    verifyRendering(for: .iPhone8(.landscape), testName: #function)
    verifyRendering(for: .iPhone8Plus(.landscape), testName: #function)
    verifyRendering(for: .iPhone12ProMax(.landscape), testName: #function)
}