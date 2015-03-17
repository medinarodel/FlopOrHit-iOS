//
//  TemplateViewController.m
//  FlopOrHit
//
//  Created by Rodel Medina on 3/17/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import "AppDelegate.h"
#import "Constants.h"
#import "TemplateViewController.h"

@interface TemplateViewController ()
@property (strong, nonatomic) AppDelegate *appDelegate;
@end

@implementation TemplateViewController

#pragma mark - Lifecycle
/* --- */

#pragma mark - View Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    /* app delegate */
    _appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];

    /* UI */
    self.view.backgroundColor = COLOR_THEME_MAIN_BG;

    self.navigationController.navigationBar.translucent = NO;
    self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBar.barTintColor = COLOR_THEME_NAVIGATION;
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:COLOR_THEME_LIGHT_GRAY}];
    

//    self.tabBarController.tabBar.barTintColor = COLOR_THEME_LIGHT_GRAY;

    /* starts originY=0 under navigation bar */
    self.automaticallyAdjustsScrollViewInsets = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Layout
/* --- */

#pragma mark - Public Interface
/* --- */

#pragma mark - User Interaction
/* - (void)foobarButtonTapped; */

#pragma mark - XYZFoobarDelegate
/* --- */

#pragma mark - Internal Helpers
/* --- */

@end
