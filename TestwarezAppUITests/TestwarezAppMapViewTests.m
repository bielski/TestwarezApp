//
//  Created by ewa on 07.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface TestwarezAppMapViewTests : KIFTestCase

@end

@implementation TestwarezAppMapViewTests

- (void)beforeEach {

    [super beforeEach];
    [tester waitForViewWithAccessibilityLabel:@"localization"];
    [tester tapViewWithAccessibilityLabel:@"localization"];
    [tester waitForViewWithAccessibilityLabel:@"mapView"];
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
    
    [tester swipeViewWithAccessibilityLabel:@"mapView" inDirection:KIFSwipeDirectionDown];
    [tester swipeViewWithAccessibilityLabel:@"mapView" inDirection:KIFSwipeDirectionUp];
    [tester swipeViewWithAccessibilityLabel:@"mapView" inDirection:KIFSwipeDirectionLeft];
    [tester swipeViewWithAccessibilityLabel:@"mapView" inDirection:KIFSwipeDirectionRight];
}

@end
