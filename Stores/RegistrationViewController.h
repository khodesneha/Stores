//
//  RegistrationViewController.h
//  Stores
//
//  Created by HAL on 11/8/14.
//  Copyright (c) 2014 com.prasad. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegistrationViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *txtStoteName;
@property (strong, nonatomic) IBOutlet UITextField *txtStoreStreet;
@property (strong, nonatomic) IBOutlet UITextField *txtStoreCity;
@property (strong, nonatomic) IBOutlet UITextField *txtStoreState;
@property (strong, nonatomic) IBOutlet UITextField *txtStorePostalCode;
@property (strong, nonatomic) IBOutlet UITextField *txtPhoneNumber;
@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UITextField *txtPassword;

- (IBAction)storeRegistration:(id)sender;


@end
