//
//  AppDelegate.m
//  TeehomLibs
//
//  Created by Teehom on 10/15/15.
//  Copyright © 2015 Teehom. All rights reserved.
//

#import "AppDelegate.h"
#import <BlocksKit+UIKit.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    [actionSheet bk_addButtonWithTitle:@"我的" handler:^{
//        NSLog(@"我的资料");
//    }];
    
//    UIAlertView *alertView = [UIAlertView bk_alertViewWithTitle:@"我的名称" message:@"确定下单吗"];
//    [alertView bk_addButtonWithTitle:@"是的" handler:^{
//        NSLog(@"点击了确定下单的按钮");
//
//    }];
//    
//    [alertView bk_addButtonWithTitle:@"拒绝" handler:^{
//        NSLog(@"点击了拒绝下单的按钮");
//        
//    }];

    
//    [alertView show];
    
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
