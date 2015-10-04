//
//  Created by Ewa Bielska on 01.09.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

#import "RegulationViewController.h"
#import "UIView+AccessibilityForDebug.h"
#import "AccessibilityConstants.h"

@interface RegulationViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *regulationWebView;
@property (strong, nonatomic) UIActivityIndicatorView *activityView;

@end

@implementation RegulationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.regulationWebView.delegate = self;

    [self setAccessibilityLabels];
    [self addActivityIndicator];
    
    [self loadRequest];
}

- (void)setAccessibilityLabels {
    [self.regulationWebView setAccessibilityLabelForDebug:AccessibilityConstants.regulationWebView];
}

- (void)loadRequest {
    NSURL *urlAddress = [NSURL URLWithString:@"http://www.testwarez.pl/regulamin/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlAddress];
    
    [self.regulationWebView loadRequest:request];
}

- (void)addActivityIndicator {
    self.activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    self.activityView.center = self.view.center;
    [self.activityView startAnimating];
    self.activityView.tag = 100;
    [self.view addSubview:self.activityView];
}

#pragma mark - MapViewController delegate methods

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [self.activityView setHidden:YES];
}

@end
