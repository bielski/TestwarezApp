//
//  Created by Ewa Bielska on 07.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "TestwarezAppKIFTestCase.h"

static NSString *const kHotelNameAndAddress = @"Hotel Windsor, Jachranka 75";

@interface TestwarezAppMapViewTests : TestwarezAppKIFTestCase

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
    [tester tapViewWithAccessibilityLabel:AccessibilityConstants.backButton];
}

- (void)testMapViewShouldBeSwipeable {
    
    // Swipe map view
}

- (void)testMapViewShouldContainAnnotation {
    
    [tester waitForViewWithAccessibilityLabel:kHotelNameAndAddress];
    [tester tapViewWithAccessibilityLabel:kHotelNameAndAddress];
}

@end
