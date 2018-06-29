//
//  Utility.m
//  NotificationSampleApp
//
//  Created by Jean Martin on 29/06/18.
//  Copyright © 2018 Public. All rights reserved.
//

#import "Utility.h"

static Utility *sharedInstance = nil;
@implementation Utility
@synthesize viewControllerObject, secondViewControllerObject;

+(id)sharedInstance{
    
    if(sharedInstance == nil){
        sharedInstance = [[Utility alloc] init];
    }
    return sharedInstance;
}

-(id)init{
    self = [super init];
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    viewControllerObject = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    secondViewControllerObject = [storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    return self;
}

@end
