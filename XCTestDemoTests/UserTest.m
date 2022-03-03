//
//  UserTest.m
//  XCTestDemoTests
//
//  Created by zhumingke on 2022/3/3.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface UserTest : KIFTestCase

@end

@implementation UserTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [tester enterText:@"User@example.com" intoViewWithAccessibilityLabel:@"login account"];
    [tester enterText:@"123456" intoViewWithAccessibilityLabel:@"login pwd"];
    [tester tapViewWithAccessibilityLabel:@"login sender"];
    
    
    [tester tapViewWithAccessibilityLabel:@"bgcolor"];
    [tester waitForTimeInterval:3];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
