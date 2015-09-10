//
//  Created by ewa on 31.08.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>
#import "MapViewController.h"
#import <MapKit/MapKit.h>

@interface TestwarezAppTests : FBSnapshotTestCase

@property (strong, nonatomic) UIViewController *mainViewController;

@end

@implementation TestwarezAppTests

- (void)setUp {
    
    [super setUp];
    
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    self.mainViewController = [mainStoryboard instantiateViewControllerWithIdentifier:@"mainViewController"];
    self.recordMode = NO;
}

- (void)testExample {
    
    FBSnapshotVerifyView(self.mainViewController.view, nil);
}

@end
