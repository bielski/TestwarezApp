//
//  Created by Ewa Bielska on 26/09/15.
//  Copyright © 2015 codework. All rights reserved.
//

#import "UIView+AccessibilityForDebug.h"

@implementation UIView (AccessibilityForDebug)

- (void)setAccessibilityLabelForDebug:(NSString *)accessibilityLabel {
#if (defined DEBUG || defined COVERAGE)
    self.isAccessibilityElement = YES;
    self.accessibilityLabel = accessibilityLabel;
#endif
}

@end
