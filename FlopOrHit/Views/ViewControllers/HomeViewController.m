//
//  HomeViewController.m
//  FlopOrHit
//
//  Created by Rodel Medina on 3/10/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import "HomeViewController.h"
#import "Photo.h"
#import "Constants.h"

@interface HomeViewController ()
@end

@implementation HomeViewController

#pragma mark - Lifecycle
/* --- */

#pragma mark - View Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Photo getFeeds:@"" lastId:@""];
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
- (void)addObservers
{
    [ [NSNotificationCenter defaultCenter] addObserver:self
                                              selector:@selector(successGetPhotos:)
                                                  name:NOTIF_GET_PHOTOS_SUCCESS
                                                object:nil];
    
    [ [NSNotificationCenter defaultCenter] addObserver:self
                                              selector:@selector(failedGetPhotos:)
                                                  name:NOTIF_GET_PHOTOS_FAILED
                                                object:nil];
}
- (void) successGetPhotos: (NSNotification *)notification
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


- (void) failedGetPhotos: (NSNotification *)notification
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
