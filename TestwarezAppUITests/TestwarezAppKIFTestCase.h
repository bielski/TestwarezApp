//
//  Created by Ewa Bielska on 26/09/15.
//  Copyright © 2015 codework. All rights reserved.
//

#import "AccessibilityConstants.h"
#import "UIAccessibilityElement-KIFAdditions.h"

#import <KIF/KIF.h>
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

@interface TestwarezAppKIFTestCase : KIFTestCase

- (UIView *)waitForViewWithAccessibilityIdentifier:(NSString *)accessibilityIdentifier;
- (void)swipeViewWithAccessibilityIdentifier:(NSString *)identifier inDirection:(KIFSwipeDirection)direction;

@end
