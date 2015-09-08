//
//  Created by ewa on 06.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "RegistrationOnlineViewController.h"

@interface RegistrationOnlineViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *registrationOnlineWebView;

@end

@implementation RegistrationOnlineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadRequest];
    [self addAccessibilityLabels];
}

- (void)loadRequest {
    NSURL *urlAddress = [NSURL URLWithString:@"https://systemcoffee.pl/?lang=pl&go2rej=1&kid=359"];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlAddress];
    
    [self.registrationOnlineWebView loadRequest:request];
}

- (void)addAccessibilityLabels {
    self.registrationOnlineWebView.accessibilityLabel = @"registrationOnlineWebView";
}

@end
