//
//  Created by ewa on 08.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "AccessibilityConstants.h"
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface TestwarezAppRegistrationViewTests : KIFTestCase

@end

@implementation TestwarezAppRegistrationViewTests

- (void)beforeEach {

    [super beforeEach];
    [tester waitForViewWithAccessibilityLabel:AccessibilityConstants.registrationButton];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.registrationButton];
    [tester waitForViewWithAccessibilityLabel:AccessibilityConstants.loginButton];
}

- (void)afterEach {

    [super afterEach];
    [tester tapViewWithAccessibilityLabel:@"OK"];
    [tester tapViewWithAccessibilityLabel:@"Back"];
}

- (void)testRegistrionViewShouldEnableLogin {
    
    [tester enterText:@"login" intoViewWithAccessibilityLabel:AccessibilityConstants.loginTextField];
    [tester enterText:@"password" intoViewWithAccessibilityLabel:AccessibilityConstants.passwordTextField];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.loginButton];
    
    [tester waitForViewWithAccessibilityLabel:@"Gratulacje, zalogowałeś się \ue415"];
}

- (void)testRegistrionViewShouldDisableLoginWhenTextFieldIsEmpty {
    
    [tester enterText:@"login" intoViewWithAccessibilityLabel:AccessibilityConstants.loginTextField];
    [tester enterText:@"" intoViewWithAccessibilityLabel:AccessibilityConstants.passwordTextField];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.loginButton];
    
    [tester waitForViewWithAccessibilityLabel:@"Proszę wprowadź dane do logowania"];
}

@end
