//
//  Created by Ewa Bielska on 10.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import <OCMock/OCMock.h>


// sdfsdfs
#define TestViewWithAccessibility(name, view) \
\
- (void)name##_CategoryExtraSmall { \
  SnapshotTestWithAccessibility(view, view.frame.size, UIContentSizeCategoryExtraSmall) \
} \
\
- (void)name##_CategoryExtraExtraExtraLarge { \
  SnapshotTestWithAccessibility(view, view.frame.size, UIContentSizeCategoryExtraExtraExtraLarge) \
}

// sdfsdfs
#define TestViewOnTwoPlatforms(name, view, iPhone6Size, iPadSize) \
\
- (void)name##_iPhone6 { \
  SnapshotTest(view, iPhone6Size) \
} \
\
- (void)name##_iPad { \
  SnapshotTest(view, iPadSize) \
}

// sfdsdfsd ;(
#define TestViewOnTwoPlatformsWithAccessibility(name, view, iPhone6Size, iPadSize) \
\
- (void)name##_iPhone6_CategoryExtraSmall { \
  SnapshotTestWithAccessibility(view, iPhone6Size, UIContentSizeCategoryExtraSmall) \
} \
\
- (void)name##_iPhone6_CategoryExtraExtraExtraLarge { \
  SnapshotTestWithAccessibility(view, iPhone6Size, UIContentSizeCategoryExtraExtraExtraLarge) \
} \
\
- (void)name##_iPad_CategoryExtraSmall { \
  SnapshotTestWithAccessibility(view, iPadSize, UIContentSizeCategoryExtraSmall) \
} \
\
- (void)name##_iPad_CategoryExtraExtraExtraLarge { \
  SnapshotTestWithAccessibility(view, iPadSize, UIContentSizeCategoryExtraExtraExtraLarge) \
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
\
