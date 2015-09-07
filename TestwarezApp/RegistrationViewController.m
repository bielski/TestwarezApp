//
//  Created by ewa on 06.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "RegistrationViewController.h"

@interface RegistrationViewController ()

@property (strong, nonatomic) IBOutlet UITextField *loginTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setImageForLoginTextField];
    [self setImageForPasswordTextField];
}

- (void)setImageForLoginTextField {
    self.loginTextField.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *loginImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"contact2.png"]];
    loginImageView.alpha = 0.5f;
    self.loginTextField.leftView = loginImageView;
}

- (void)setImageForPasswordTextField {
    self.passwordTextField.leftViewMode = UITextFieldViewModeAlways;
    UIImageView *passwordImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"password2.png"]];
    passwordImageView.alpha = 0.5f;
    self.passwordTextField.leftView = passwordImageView;
}

@end
