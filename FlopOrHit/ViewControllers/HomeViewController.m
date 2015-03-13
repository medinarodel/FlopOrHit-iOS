//
//  HomeViewController.m
//  FlopOrHit
//
//  Created by Rodel Medina on 3/10/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import "HomeViewController.h"
#import "Photo.h"

@interface HomeViewController () {
    NSString *notificationName;
}
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor brownColor];
    notificationName = @"getFeeds";
    
    [ [NSNotificationCenter defaultCenter] addObserver:self
                                              selector:@selector(handleGetPhotosResult:)
                                                  name:notificationName
                                                object:nil];
    
    [Photo getFeeds:@"" lastId:@""];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) handleGetPhotosResult: (NSNotification *)notification
{
    NSDictionary *results = [notification userInfo];
    
    BOOL isSuccess = [[results objectForKey:@"success"] boolValue];
    
    if (isSuccess) {
        /*
            1. _photos = [results objectForKey:@"feed"];
            2. update ui - tableview maybe
            3. update _lastId
         */
    }
}
@end
