//
//  XCTestDemoTests.m
//  XCTestDemoTests
//
//  Created by zhumingke on 2022/3/2.
//

#import <XCTest/XCTest.h>
#import "HomeVC+XCTest.h"
#import <KIF/KIF.h>

@interface XCTestDemoTests : XCTestCase
@property (nonatomic , strong) HomeVC *vc;
@end

@implementation XCTestDemoTests

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.vc = [HomeVC new];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    // 15875732907
}

- (void)testHomePrivate {
    BOOL result = [self.vc checkNumber:70];
    XCTAssert(result,@"传入数值小于60");
}


- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
