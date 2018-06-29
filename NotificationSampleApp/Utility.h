//
//  Utility.h
//  NotificationSampleApp
//
//  Created by Jean Martin on 29/06/18.
//  Copyright © 2018 Public. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Utility : NSObject
@property(strong, nonatomic)ViewController *viewControllerObject;
@property(strong, nonatomic)SecondViewController *secondViewControllerObject;

+(id)sharedInstance;
-(id)init;
@end
