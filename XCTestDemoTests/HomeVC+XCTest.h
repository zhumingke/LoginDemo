//
//  HomeVC+XCTest.h
//  XCTestDemoTests
//
//  Created by zhumingke on 2022/3/2.
//

#import "HomeVC.h"

NS_ASSUME_NONNULL_BEGIN

@interface HomeVC (XCTest)

- (BOOL)checkNumber:(NSInteger)number;

- (void)bgColor;

@property (nonatomic , copy) NSString *name;

@end

NS_ASSUME_NONNULL_END
