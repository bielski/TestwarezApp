//
//  Created by ewa on 08.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
#import "UIAccessibilityElement-KIFAdditions.h"

@interface TestwarezAppRegulationViewTests : KIFTestCase

@end

@implementation TestwarezAppRegulationViewTests

- (void)beforeEach {
    
    [super beforeEach];
    [tester waitForViewWithAccessibilityLabel:@"regulation"];
    [tester tapViewWithAccessibilityLabel:@"regulation"];
}

- (void)afterEach {

    [super afterEach];
    [tester tapViewWithAccessibilityLabel:@"Back"];
}

- (void)testRegulationViewShouldDisplayWebView {
    
    UIWebView *regulationWebView = (UIWebView *)[UIAccessibilityElement accessibilityElementWithLabel:@"regulationWebView"
                                value:nil
                                traits:UIAccessibilityTraitNone
                                error:nil];
    
    [regulationWebView reload];
}

@end
