//
//  Created by ewa on 10.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "SnapshotTestHelper.m"
#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

@interface TestwarezAppMainViewTests : FBSnapshotTestCase

@property (strong, nonatomic) UIViewController *mainViewController;

@end

@implementation TestwarezAppMainViewTests

- (void)setUp {
    
    [super setUp];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.mainViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"mainViewController"];
    self.recordMode = NO;
}

- (void)testMainViewControllerWithDefaltState {
    
    FBSnapshotVerifyView(self.mainViewController.view, nil);
}

@end
