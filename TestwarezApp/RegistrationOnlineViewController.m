//
//  Created by Ewa Bielska on 06.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "RegistrationOnlineViewController.h"
#import "UIView+AccessibilityForDebug.h"
#import "AccessibilityConstants.h"

@interface RegistrationOnlineViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *registrationOnlineWebView;

@end

@implementation RegistrationOnlineViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setAccessibilityLabels];
    [self loadRequest];
}

- (void)loadRequest {
    NSURL *urlAddress = [NSURL URLWithString:@"https://systemcoffee.pl/?lang=pl&go2rej=1&kid=359"];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlAddress];
    
    [self.registrationOnlineWebView loadRequest:request];
}

- (void)setAccessibilityLabels {
    [self.registrationOnlineWebView setAccessibilityLabelForDebug:AccessibilityConstants.registrationOnlineWebView];
}

@end
