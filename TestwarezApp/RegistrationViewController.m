//
//  Created by ewa on 06.09.2015.
//  Copyright © 2015 codework. All rights reserved.
//

#import "RegistrationViewController.h"
#import "UIView+AccessibilityForDebug.h"
#import "AccessibilityConstants.h"

@interface RegistrationViewController ()

@property (strong, nonatomic) IBOutlet UITextField *loginTextField;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UIButton *confirmLoginButton;
@property (strong, nonatomic) IBOutlet UIButton *registerButton;

@end

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addAccessibilityLabels];
    [self setImageForLoginTextField];
    [self setImageForPasswordTextField];
}

- (void)addAccessibilityLabels {
    [self.loginTextField setAccessibilityLabelForDebug:AccessibilityConstants.loginTextField];
    [self.passwordTextField setAccessibilityLabelForDebug:AccessibilityConstants.passwordTextField];
    [self.confirmLoginButton setAccessibilityLabelForDebug:AccessibilityConstants.confirmLoginButton];
    [self.registerButton setAccessibilityLabelForDebug:AccessibilityConstants.registerButton];
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

- (IBAction)loginButtonTapped:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Info" message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    
    if ([self.loginTextField.text isEqualToString:@""] || [self.passwordTextField.text isEqualToString:@""]) {
        alert.message = @"Proszę wprowadź dane do logowania";
    } else {
        alert.message = @"Gratulacje, zalogowałeś się \ue415";
    }
    
    [alert show];
}


@end
