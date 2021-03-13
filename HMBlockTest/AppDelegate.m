//
//  AppDelegate.m
//  HMBlockTest
//
//  Created by 齐浩铭 on 2021/3/13.
//

#import "AppDelegate.h"
#import "HMViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    HMViewController *controller = [[HMViewController alloc] init];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    [self.window setRootViewController:navigationController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
