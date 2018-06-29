//
//  ViewController.m
//  NotificationSampleApp
//
//  Created by Jean Martin on 29/06/18.
//  Copyright © 2018 Public. All rights reserved.
//

#import "ViewController.h"
#import "Utility.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize firstViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self.navigationController setNavigationBarHidden:YES];
//    NSString *sampleStr = @"str";
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(sampleDisp) name:@"str" object:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    
}

- (IBAction)firstPageButtonAction:(id)sender {
    
    SecondViewController *secondViewController = [[Utility sharedInstance] secondViewControllerObject];
    [self.navigationController pushViewController:secondViewController animated:YES];
    NSLog(@"%@",secondViewController);
    
}

-(void)sampleDisp{
    NSLog(@"Srinivasan");
}
@end
