//
//  Created by Ewa Bielska on 08.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "TestwarezAppKIFTestCase.h"

@interface TestwarezAppRegulationViewTests : TestwarezAppKIFTestCase

@end

@implementation TestwarezAppRegulationViewTests

- (void)beforeEach {
    
    [super beforeEach];
    [tester waitForViewWithAccessibilityLabel:AccessibilityConstants.regulationButton];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.regulationButton];
}

- (void)afterEach {

    [super afterEach];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.backButton];
}

- (void)testRegulationViewShouldDisplayWebView {
    
    UIWebView *regulationWebView = (UIWebView *)[UIAccessibilityElement
                                                 accessibilityElementWithLabel:AccessibilityConstants.regulationWebView
                                                                         value:nil
                                                                        traits:UIAccessibilityTraitNone
                                                                         error:nil];

    [regulationWebView reload];
}

@end
