//
//  Created by ewa on 31.08.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <FBSnapshotTestCase/FBSnapshotTestCase.h>

@interface TestwarezAppTests : FBSnapshotTestCase
@property (strong, nonatomic) UIView *testView;
@end

@implementation TestwarezAppTests

- (void)setUp {
    [super setUp];
    self.testView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 20, 100)];
    self.testView.backgroundColor = [UIColor blueColor];
    self.recordMode = NO;
}

- (void)testExample {
    FBSnapshotVerifyView(self.testView, nil);
}

@end
