//
//  LoginViewController.m
//  Stores
//
//  Created by HAL on 11/8/14.
//  Copyright (c) 2014 com.prasad. All rights reserved.
//

#import "LoginViewController.h"
#import "HomeViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"login_success"]) {
        HomeViewController *hvc = [segue destinationViewController];
        hvc.email = [self.txtEmail text];
    }
}

-(BOOL) textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)validateLogin:(id)sender {
    if ([[self.txtEmail text] isEqualToString:@""] || [[self.txtPassword text] isEqualToString:@""]) {
        [self alertStatus:@"Please enter username & password" :@"Signin Failed" :0];
    } else if ([[self.txtEmail text] isEqualToString:[self.txtPassword text]]) {
        [self performSegueWithIdentifier:@"login_success" sender:self];
    } else {
        [self alertStatus:@"Invalid Login" :@"Signin Failed" :1];
    }
}

- (void) alertStatus: (NSString *) msg : (NSString *) title : (int) tag {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:msg delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    alertView.tag = tag;
    [alertView show];
}

- (IBAction)tapToReturn:(id)sender {// we need to look into this issue
    [self.view endEditing:YES];
}

- (IBAction)resetData:(id)sender {
    self.txtEmail.text = @"";
    self.txtPassword.text = @"";
}
@end
