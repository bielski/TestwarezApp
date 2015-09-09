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

    [self setButtonFrameAndWidth:self.localizationButton];
    [self setButtonFrameAndWidth:self.registrationButton];
    [self setButtonFrameAndWidth:self.regulationButton];
}

- (void)setButtonFrameAndWidth:(UIButton *)button {
    [[button layer] setBorderColor:[UIColor colorWithRed:(51/2550.0) green:(153/255.0) blue:(255/255.0) alpha:0.7].CGColor];
    [[button layer] setBorderWidth:0.8f];
}

- (void)addGradientToImage {
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.blurView.bounds;
    UIColor *startColour = [UIColor whiteColor];
    UIColor *endColour = [[UIColor whiteColor] colorWithAlphaComponent:0];
    
    gradient.colors = [NSArray arrayWithObjects:(id)[startColour CGColor], (id)[endColour CGColor], nil];
    [self.blurView.layer insertSublayer:gradient atIndex:0];
}

- (void)addAccessibilityLabels {
    self.localizationButton.accessibilityLabel = @"localization";
    self.registrationButton.accessibilityLabel = @"registration";
    self.regulationButton.accessibilityLabel = @"regulation";
}

@end
