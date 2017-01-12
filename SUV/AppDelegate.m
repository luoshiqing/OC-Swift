//
//  AppDelegate.m
//  SUV
//
//  Created by sqluo on 2017/1/12.
//  Copyright © 2017年 sqluo. All rights reserved.
//



/**
 1.OC-Swift混编
 2.OC使用Swift
    2.1 Build Settings->Packaging->Defines Module == Yes
    2.2 在需要使用Swift 的地方 #import "工程名-Swift.h" 如本工程 #import "SUV-Swift.h"
    2.3 即可调用
 3.Swift使用OC
    3.1 在桥接文件中导入需要使用的OC头文件
    3.2 即可使用
 */




#import "AppDelegate.h"

#import "SUV-Swift.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    BSViewController *vc = [[BSViewController alloc] init];
    vc.hhha = @"123456";
    
    NSString *str = [vc textInto:9];
    NSLog(@"%@",str);
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    
    self.window.rootViewController = nav;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
