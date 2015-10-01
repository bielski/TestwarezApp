//
//  Created by Ewa Bielska on 31.08.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

#import "ViewController.h"
#import "UIView+AccessibilityForDebug.h"
#import <QuartzCore/QuartzCore.h>
#import "AccessibilityConstants.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UIButton *localizationButton;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;
@property (strong, nonatomic) IBOutlet UIButton *regulationButton;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UIView *blurView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpAccessibilityLabels];
    [self addGradientToImage];

    [self setUpButtonBorder:self.localizationButton];
    [self setUpButtonBorder:self.loginButton];
    [self setUpButtonBorder:self.regulationButton];
}

- (void)setUpButtonBorder:(UIButton *)button {
    UIColor *borderColor = [UIColor colorWithRed:(51.0f/2550.0f) green:(153.0f/255.0f) blue:(255.0f/255.0f) alpha:0.7f];
    [button layer].borderColor = borderColor.CGColor;
    [button layer].borderWidth = 0.8f;
}

- (void)addGradientToImage {
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.blurView.bounds;

    UIColor *startColour = [UIColor whiteColor];
    UIColor *endColour = [[UIColor whiteColor] colorWithAlphaComponent:0];
    
    gradient.colors = @[ (id)startColour.CGColor, (id)endColour.CGColor ];
    [self.blurView.layer insertSublayer:gradient atIndex:0];
}

- (void)setUpAccessibilityLabels {
    [self.localizationButton setAccessibilityLabelForDebug:AccessibilityConstants.localizationButton];
    [self.loginButton setAccessibilityLabelForDebug:AccessibilityConstants.loginButton];
    [self.regulationButton setAccessibilityLabelForDebug:AccessibilityConstants.regulationButton];
}

@end
