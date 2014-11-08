//
//  LoginViewController.h
//  Stores
//
//  Created by HAL on 11/8/14.
//  Copyright (c) 2014 com.prasad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UITextField *txtPassword;
- (IBAction)validateLogin:(id)sender;
- (IBAction)tapToReturn:(id)sender;
- (IBAction)resetData:(id)sender;
@end
	