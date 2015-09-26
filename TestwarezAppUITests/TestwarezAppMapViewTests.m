//
//  Created by ewa on 07.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "AccessibilityConstants.h"
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface TestwarezAppMapViewTests : KIFTestCase

@end

@implementation TestwarezAppMapViewTests

- (void)beforeEach {

    [super beforeEach];
    [tester waitForViewWithAccessibilityLabel:AccessibilityConstants.localizationButton];
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.localizationButton];
    [tester waitForViewWithAccessibilityLabel:AccessibilityConstants.mapView];
}

- (void)afterEach {

    [super afterEach];
    [tester tapViewWithAccessibilityLabel:@"Back"];
}

- (void)testMapViewShouldContainAnnotation {
    
    [tester waitForViewWithAccessibilityLabel:@"Hotel Windsor, Jachranka 75"];
    [tester tapViewWithAccessibilityLabel:@"Hotel Windsor, Jachranka 75"];
}

- (void)testMapViewShouldBeSwipeable {
    
    [tester swipeViewWithAccessibilityLabel:AccessibilityConstants.mapView inDirection:KIFSwipeDirectionDown];
    [tester swipeViewWithAccessibilityLabel:AccessibilityConstants.mapView inDirection:KIFSwipeDirectionUp];
    [tester swipeViewWithAccessibilityLabel:AccessibilityConstants.mapView inDirection:KIFSwipeDirectionLeft];
    [tester swipeViewWithAccessibilityLabel:AccessibilityConstants.mapView inDirection:KIFSwipeDirectionRight];
}

@end
