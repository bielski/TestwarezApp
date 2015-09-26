//
//  Created by Ewa Bielska on 26/09/15.
//  Copyright © 2015 codework. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TestwarezAppXcodeUITests : XCTestCase

@end

@implementation TestwarezAppXcodeUITests

- (void)setUp {

    [super setUp];
    self.continueAfterFailure = NO;

    [[[XCUIApplication alloc] init] launch];
}

- (void)tearDown {

    [super tearDown];
}

- (void)testExample {
    
    //Record your test
}

@end
