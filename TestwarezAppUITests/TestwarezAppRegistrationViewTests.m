//
//  Created by ewa on 08.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "TestwarezAppKIFTestCase.h"

static NSString *const kLogin = @"login";
static NSString *const kEmptyPassword = @"";
static NSString *const kPassword = @"hasło";

static NSString *const kGratulationInfo = @"Gratulacje, zalogowałeś się \ue415";
static NSString *const kMissingDataInfo = @"Proszę wprowadź dane do logowania";

@interface TestwarezAppRegistrationViewTests : TestwarezAppKIFTestCase

@end

@implementation TestwarezAppRegistrationViewTests

- (void)beforeEach {

    [super beforeEach];
    [tester waitForViewWithAccessibilityLabel:AccessibilityConstants.loginButton];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.loginButton];
    [tester waitForViewWithAccessibilityLabel:AccessibilityConstants.confirmLoginButton];
}

- (void)afterEach {

    [super afterEach];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.okButton];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.backButton];
}

- (void)testRegistrionViewShouldEnableLogin {
    
    [tester enterText:kLogin intoViewWithAccessibilityLabel:AccessibilityConstants.loginTextField];
    [tester enterText:kPassword intoViewWithAccessibilityLabel:AccessibilityConstants.passwordTextField];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.confirmLoginButton];
    
    [tester waitForViewWithAccessibilityLabel:kGratulationInfo];
}

- (void)testRegistrionViewShouldDisableLoginWhenTextFieldIsEmpty {
    
    [tester enterText:kLogin intoViewWithAccessibilityLabel:AccessibilityConstants.loginTextField];
    [tester enterText:kEmptyPassword intoViewWithAccessibilityLabel:AccessibilityConstants.passwordTextField];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.confirmLoginButton];
    
    [tester waitForViewWithAccessibilityLabel:kMissingDataInfo];
}

@end
