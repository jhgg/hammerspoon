//
//  Hammerspoon_Tests.m
//  Hammerspoon Tests
//
//  Created by Peter van Dijk on 28/10/14.
//  Copyright (c) 2014 Hammerspoon. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

// FIXME: hack
NSString* MJLuaRunString(NSString* command);

@interface Hammerspoon_Tests : XCTestCase

@end

@implementation Hammerspoon_Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testRequires {
    // FIXME: this is hacky, we should be getting a table back so we can assert every extension, etc.
    NSString *res = MJLuaRunString(@"return testrequires()");
    NSLog(@"%@", res);
    XCTAssertEqualObjects(res, @"", @"one or more require statements failed");
}


@end
