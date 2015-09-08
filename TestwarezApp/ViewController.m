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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addGradientToImage];
    [self addAccessibilityLabels];
}

- (void)addGradientToImage {
}

- (void)addAccessibilityLabels {
    self.localizationButton.accessibilityLabel = @"localization";
    self.registrationButton.accessibilityLabel = @"registration";
    self.regulationButton.accessibilityLabel = @"regulation";
}

@end
