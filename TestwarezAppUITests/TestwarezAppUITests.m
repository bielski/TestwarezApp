//
//  TestwarezAppUITests.m
//  TestwarezAppUITests
//
//  Created by ewa on 31.08.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface TestwarezAppUITests : KIFTestCase

@end

@implementation TestwarezAppUITests

- (void)testMyApp {
    [tester waitForAbsenceOfSoftwareKeyboard];
}

@end
