//
//  UnitTestPracticeUnitTests.swift
//  UnitTestPracticeUnitTests
//
//  Created by 윤형석 on 2023/06/14.
//

import XCTest
import ViewInspector
@testable import UnitTestPractice

final class UnitTestPracticeUnitTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
        
    func test_something() throws {
        
        
        let viewModel = ViewModel()
        let contentView = ContentView(viewModel: viewModel)
        let sut = try contentView.inspect().find(ContentView.self).actualView()
        
        // 두 개의 뷰가 존재하는지 ?
        let textButton = try sut.inspect().find(text: sut.viewModel.buttonTitle)
        let stateText = try sut.inspect().find(text: sut.viewModel.stateTitle)
        
        // 버튼이 잘 작동하는지 ? and count += 3이 되었는지 ?
        try textButton.callOnTapGesture()
        try textButton.callOnTapGesture()
        try textButton.callOnTapGesture()
        
        // count == 3 인지 ?, count == 3일때 isOn 및 stateTitle이 on으로 바뀌는지 ?
        XCTAssertEqual(sut.viewModel.count, 3)
        XCTAssertEqual(sut.viewModel.stateTitle, "on")
        XCTAssertTrue(sut.viewModel.isOn)
    }

}
