//
//  AlgorithmsTests.m
//  AlgorithmsTests
//
//  Created by rl on 4/16/14.
//  Copyright (c) 2014 Rene Limberger. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RLAlgorithmsController.h"

@interface AlgorithmsTests : XCTestCase

@end

@implementation AlgorithmsTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testCountInversions
{
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[]] == 0), @"failed");
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[@(0)]] == 0), @"failed");
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[@(0), @(1)]] == 0), @"failed");
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[@(0), @(1), @(2)]] == 0), @"failed");
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[@(0), @(1), @(2), @(3)]] == 0), @"failed");
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[@(0), @(1), @(2), @(3), @(4)]] == 0), @"failed");
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[@(1), @(0), @(2), @(3), @(4)]] == 1), @"failed");
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[@(1), @(0), @(2), @(3), @(4), @(5)]] == 1), @"failed");
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[@(1), @(0), @(2), @(3), @(5), @(4)]] == 2), @"failed");
    XCTAssertTrue(([RLAlgorithmsController countInversions:@[@(1), @(0), @(3), @(5), @(2), @(4)]] == 3), @"failed");
}

@end
