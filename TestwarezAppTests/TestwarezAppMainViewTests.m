//
//  Created by ewa on 10.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "SnapshotTestHelper.m"
#import "SnapshotConstants.m"
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

static CGFloat const kViewHeight = 300.0f;

@interface TestwarezAppMainViewTests : FBSnapshotTestCase

@property (strong, nonatomic) UIViewController *mainViewController;
@property (strong, nonatomic) UIView *view;

@end

@implementation TestwarezAppMainViewTests

- (void)setUp {
    
    [super setUp];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.mainViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"mainViewController"];
    self.view = self.mainViewController.view;
    self.recordMode = NO;
}

- (void)testMainViewControllerUsingDefaultMacro {
    FBSnapshotVerifyView(self.mainViewController.view, nil);
}

TestViewOnTwoPlatformsWithAccessibility(testMainViewControllerUsingCustomMacro,
                                        self.mainViewController.view,
                                        CGSizeMake(AGODiPhone4Width, kViewHeight),
                                        CGSizeMake(AGODiPhone4Width, kViewHeight));

@end


