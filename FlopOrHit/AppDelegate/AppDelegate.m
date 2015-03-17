//
//  AppDelegate.m
//  FlopOrHit
//
//  Created by Rodel Medina on 3/9/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // --------------------------
    // WINDOW
    // --------------------------
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = self.mainTabBarController;
    
    [self.window makeKeyAndVisible];

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


/*
	|--------------------------------------------------------------------------
	| ACCESSORS
	|--------------------------------------------------------------------------
	*/
# pragma mark - accessors
- (UITabBarController *)mainTabBarController {
    if(!_mainTabBarController) {
        _mainTabBarController = [[UITabBarController alloc] init];
        _mainTabBarController.delegate = self;
        _mainTabBarController.tabBar.tintColor = COLOR_THEME_ORANGE;
        
        [_mainTabBarController setViewControllers:[NSArray arrayWithObjects:
                                                   self.homeNavigationController,
                                                   self.betsNavigationController,
                                                   self.usersNavigationController,
                                                   self.leaderBoardNavigationController,
                                                   self.menuNavigationController,
                                                   nil] animated:YES];
        _mainTabBarController.selectedIndex = 0;

    }
    return _mainTabBarController;
}

- (UINavigationController *)homeNavigationController {
    if(!_homeNavigationController) {
        _homeNavigationController = [[UINavigationController alloc] initWithRootViewController:self.homeViewController];
        _homeNavigationController.title = @"Feeds";
        _homeNavigationController.tabBarItem.image = [UIImage imageNamed:@"feeds"];
    }
    return _homeNavigationController;
}

- (UINavigationController *)betsNavigationController {
    if(!_betsNavigationController) {
        _betsNavigationController = [[UINavigationController alloc] initWithRootViewController:self.betsViewController];
        _betsNavigationController.title = @"Bets";
        _betsNavigationController.tabBarItem.image = [UIImage imageNamed:@"bets"];
    }
    return _betsNavigationController;
}

- (UINavigationController *)usersNavigationController {
    if(!_usersNavigationController) {
        _usersNavigationController = [[UINavigationController alloc] initWithRootViewController:self.usersViewController];
        _usersNavigationController.title = @"Users";
        _usersNavigationController.tabBarItem.image = [UIImage imageNamed:@"users"];
    }
    return _usersNavigationController;
}

- (UINavigationController *)leaderBoardNavigationController {
    if(!_leaderBoardNavigationController) {
        _leaderBoardNavigationController = [[UINavigationController alloc] initWithRootViewController:self.leaderBoardViewController];
        _leaderBoardNavigationController.title = @"Leaders";
        _leaderBoardNavigationController.tabBarItem.image = [UIImage imageNamed:@"leaders"];
    }
    return _leaderBoardNavigationController;
}

- (UINavigationController *)menuNavigationController {
    if(!_menuNavigationController) {
        _menuNavigationController = [[UINavigationController alloc] initWithRootViewController:self.menuViewController];
        _menuNavigationController.title = @"More";
        _menuNavigationController.tabBarItem.image = [UIImage imageNamed:@"menu"];
    }
    return _menuNavigationController;
}

- (HomeViewController *)homeViewController {
    if(!_homeViewController) {
        _homeViewController = [[HomeViewController alloc] init];
        _homeViewController.title = @"Feeds";
    }
    return _homeViewController;
}

- (BetsViewController *)betsViewController {
    if(!_betsViewController) {
        _betsViewController = [[BetsViewController alloc] init];
        _betsViewController.title = @"Bets";
    }
    return _betsViewController;
}

- (UsersViewController *)usersViewController {
    if(!_usersViewController) {
        _usersViewController = [[UsersViewController alloc] init];
        _usersViewController.title = @"Users";
    }
    return _usersViewController;
}

- (LeaderBoardViewController *)leaderBoardViewController {
    if(!_leaderBoardViewController) {
        _leaderBoardViewController = [[LeaderBoardViewController alloc] init];
        _leaderBoardViewController.title = @"Leader Board";
    }
    return _leaderBoardViewController;
}

- (LeaderBoardViewController *)menuViewController {
    if(!_menuViewController) {
        _menuViewController = [[LeaderBoardViewController alloc] init];
        _menuViewController.title = @"Menu";
    }
    return _menuViewController;
}

@end
