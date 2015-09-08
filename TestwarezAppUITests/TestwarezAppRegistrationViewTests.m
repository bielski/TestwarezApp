//
//  Created by ewa on 08.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface TestwarezAppRegistrationViewTests : KIFTestCase

@end

@implementation TestwarezAppRegistrationViewTests

- (void)beforeEach {

    [super beforeEach];
    [tester waitForViewWithAccessibilityLabel:@"registration"];
    [tester tapViewWithAccessibilityLabel:@"registration"];
    [tester waitForViewWithAccessibilityLabel:@"loginButton"];
}

- (void)afterEach {

    [super afterEach];
    [tester tapViewWithAccessibilityLabel:@"Back"];
}

- (void)testRegistrionViewShouldEnableLogin {
    
    [tester enterText:@"login" intoViewWithAccessibilityLabel:@"loginTextField"];
    [tester enterText:@"password" intoViewWithAccessibilityLabel:@"passwordTextField"];
    [tester tapViewWithAccessibilityLabel:@"loginButton"];
    
    [tester waitForViewWithAccessibilityLabel:@"Gratulacje, zalogowałeś się \ue415"];
}

- (void)testRegistrionViewShouldDisableLoginWhenTextFieldIsEmpty {
    
    [tester enterText:@"" intoViewWithAccessibilityLabel:@"loginTextField"];
    [tester enterText:@"" intoViewWithAccessibilityLabel:@"passwordTextField"];
    [tester tapViewWithAccessibilityLabel:@"loginButton"];
    
    [tester waitForViewWithAccessibilityLabel:@"Proszę wprowadź dane do logowania"];
}

@end
