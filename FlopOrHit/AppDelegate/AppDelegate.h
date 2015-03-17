//
//  AppDelegate.h
//  FlopOrHit
//
//  Created by Rodel Medina on 3/9/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Constants.h"

#pragma mark - tabbar
#import "BetsViewController.h"
#import "HomeViewController.h"
#import "LeaderBoardViewController.h"
#import "UsersViewController.h"
#import "MoreViewController.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

// Tab Bar Controller
@property (strong, nonatomic) UITabBarController *mainTabBarController;

@property (strong, nonatomic) UINavigationController *homeNavigationController;
@property (strong, nonatomic) HomeViewController *homeViewController;

@property (strong, nonatomic) UINavigationController *betsNavigationController;
@property (strong, nonatomic) BetsViewController *betsViewController;

@property (strong, nonatomic) UINavigationController *usersNavigationController;
@property (strong, nonatomic) UsersViewController *usersViewController;

@property (strong, nonatomic) UINavigationController *leaderBoardNavigationController;
@property (strong, nonatomic) LeaderBoardViewController *leaderBoardViewController;

@property (strong, nonatomic) UINavigationController *menuNavigationController;
@property (strong, nonatomic) MoreViewController *menuViewController;
@end

