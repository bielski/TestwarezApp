//
//  RegulationViewController.m
//  TestwarezApp
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
    NSURL *urlAddress = [NSURL URLWithString:@"http://www.testwarez.pl/regulamin/"];
    NSURLRequest *request = [NSURLRequest requestWithURL:urlAddress];
    [self.regulationWebView loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
