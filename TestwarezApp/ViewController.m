//
//  Created by ewa on 31.08.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *localizationButton;
@property (strong, nonatomic) IBOutlet UIButton *registrationButton;
@property (strong, nonatomic) IBOutlet UIButton *regulationButton;

@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIView *blurView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addGradientToImage];
    [self addAccessibilityLabels];
}

- (void)addGradientToImage {
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.blurView.bounds;
    UIColor *startColour = [UIColor whiteColor]; // colorWithAlphaComponent:1];
    UIColor *endColour = [[UIColor whiteColor] colorWithAlphaComponent:0];
//    gradient.startPoint = CGPointMake(0.5, 0);
//    gradient.endPoint = CGPointMake(0.5, 1.0f);
    gradient.colors = [NSArray arrayWithObjects:(id)[startColour CGColor], (id)[endColour CGColor], nil];
    [self.blurView.layer insertSublayer:gradient atIndex:0];
}

- (void)addAccessibilityLabels {
    self.localizationButton.accessibilityLabel = @"localization";
    self.registrationButton.accessibilityLabel = @"registration";
    self.regulationButton.accessibilityLabel = @"regulation";
}

@end
