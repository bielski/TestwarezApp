//
//  Created by Ewa Bielska on 10.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "SnapshotTestHelper.m"
#import "SnapshotConstants.m"
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

@interface TestwarezAppMainViewSnapshotTests : FBSnapshotTestCase

@property (strong, nonatomic) UIViewController *mainViewController;

@end

@implementation TestwarezAppMainViewSnapshotTests

- (void)setUp {

    [super setUp];

    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.mainViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"mainViewController"];
    
    self.recordMode = NO;
}

- (void)testMainViewControllerUsingDefaultMacro {
    FBSnapshotVerifyView(self.mainViewController.view, nil);
}

TestViewOnTwoPlatforms(testMainViewControllerUsingCustomMacro,
                       self.mainViewController.view,
                       CGSizeMake(iPhone4Width, iPhone4Height),
                       CGSizeMake(iPhone6PlusWidth, iPhone6PlusHeight));

@end


