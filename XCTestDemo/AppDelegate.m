//
//  AppDelegate.m
//  XCTestDemo
//
//  Created by zhumingke on 2022/3/2.
//

#import "AppDelegate.h"
#import "HomeVC.h"
#import "UserVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    UserVC *vc = [[UserVC alloc] init];
    [self.window setRootViewController:vc];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
