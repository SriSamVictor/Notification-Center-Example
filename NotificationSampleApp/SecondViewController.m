//
//  SecondViewController.m
//  NotificationSampleApp
//
//  Created by Jean Martin on 29/06/18.
//  Copyright © 2018 Public. All rights reserved.
//

#import "SecondViewController.h"
#import "Utility.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.navigationController setNavigationBarHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    
}

- (IBAction)secondPageButtonAction:(id)sender {
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"str" object:nil];
    
    ViewController *viewController = [[Utility sharedInstance]viewControllerObject];
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"%@",viewController);
}
@end
