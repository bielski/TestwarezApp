//
//  Created by Ewa Bielska on 24/09/15.
//  Copyright © 2015 codework. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

#define TestViewWithAccessibility(name, view) \
\
- (void)name##_CategoryExtraSmall { \
  SnapshotTestWithAccessibility(view, view.frame.size, UIContentSizeCategoryExtraSmall) \
} \
\
- (void)name##_CategoryExtraExtraExtraLarge { \
  SnapshotTestWithAccessibility(view, view.frame.size, UIContentSizeCategoryExtraExtraExtraLarge) \
}

#define TestViewOnFourPlatforms(name, view, AGODiPhone6Size, AGODiPadSize) \
\
- (void)name##_iPhone6 { \
  SnapshotTest(view, AGODiPhone6Size) \
} \
\
- (void)name##_iPad { \
  SnapshotTest(view, AGODiPadSize) \
}

#define TestViewOnTwoPlatformsWithAccessibility(name, view, AGODiPhone6Size, AGODiPadSize) \
\
- (void)name##_iPhone6_CategoryExtraSmall { \
  SnapshotTestWithAccessibility(view, AGODiPhone6Size, UIContentSizeCategoryExtraSmall) \
} \
\
- (void)name##_iPhone6_CategoryExtraExtraExtraLarge { \
  SnapshotTestWithAccessibility(view, AGODiPhone6Size, UIContentSizeCategoryExtraExtraExtraLarge) \
} \
\
- (void)name##_iPad_CategoryExtraSmall { \
  SnapshotTestWithAccessibility(view, AGODiPadSize, UIContentSizeCategoryExtraSmall) \
} \
\
- (void)name##_iPad_CategoryExtraExtraExtraLarge { \
  SnapshotTestWithAccessibility(view, AGODiPadSize, UIContentSizeCategoryExtraExtraExtraLarge) \
}

#define SnapshotTest(view, size) SnapshotTestWithAccessibility(view, size, UIContentSizeCategoryLarge)

#define SnapshotTestWithAccessibility(view, size, contentSizeCategory) \
  SnapshotTestWithAccessibilityAndConfiguration(view, size, contentSizeCategory, {})

#define SnapshotTestWithAccessibilityAndConfiguration(view, size, contentSizeCategory, configurationCode) \
\
  UIApplication *applicationMock = OCMPartialMock([UIApplication sharedApplication]); \
  OCMStub([applicationMock preferredContentSizeCategory]).andReturn(contentSizeCategory); \
  UIView *v = view; \
  [[NSNotificationCenter defaultCenter] postNotificationName:UIContentSizeCategoryDidChangeNotification \
  object:nil]; \
  \
  v.bounds = CGRectMake(0.0f, 0.0f, size.width, size.height); \
  configurationCode; \
  [v layoutIfNeeded]; \
  FBSnapshotVerifyView(v, nil); \
  [(id)applicationMock stopMocking]; \