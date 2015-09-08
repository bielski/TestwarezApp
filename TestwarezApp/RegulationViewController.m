//
//  Created by ewa on 01.09.2015.
//  Copyright (c) 2015 codework. All rights reserved.
//

#import "RegulationViewController.h"

@interface RegulationViewController ()

@property (strong, nonatomic) IBOutlet UIWebView *regulationWebView;

@end

@implementation RegulationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadRequest];
    [self addAccessibilityLabels];
}

- (void)addAccessibilityLabels {
    self.regulationWebView.accessibilityLabel = @"regulationWebView";
}

- (void)loadRequest {
    NSURL *urlAddress = [NSURL URLWithString:@"http://www.testwarez.pl/regulamin/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlAddress];
    
    [self.regulationWebView loadRequest:request];
}

@end
