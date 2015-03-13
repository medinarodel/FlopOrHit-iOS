//
//  Photo.m
//  FlopOrHit
//
//  Created by Rodel Medina on 3/10/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import "Photo.h"
#import "APIConnect.h"

@implementation Photo
+ (void) getFeeds:(NSString *)authToken
           lastId:(NSString *)lastId
{
    NSString *notificationName = @"getFeeds.model";

    [ [NSNotificationCenter defaultCenter] addObserver:self
                                              selector:@selector(broadcastGetFeedsResult:)
                                                  name:notificationName
                                                object:nil];
    
    [APIConnect getRequest:@"HTTP HERE"
                    params:nil
          notificationName:notificationName];
}

+ (void) broadcastGetFeedsResult: (NSNotification *)results
{

    [ [NSNotificationCenter defaultCenter] postNotificationName:@"getFeeds"
                                                         object:nil
                                                       userInfo:[results userInfo]];
}
@end
