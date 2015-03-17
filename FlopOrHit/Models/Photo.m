//
//  Photo.m
//  FlopOrHit
//
//  Created by Rodel Medina on 3/10/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import "Photo.h"
#import "APIConnect.h"
#import "Constants.h"

@implementation Photo
+ (void) getFeeds:(NSString *)authToken
           lastId:(NSString *)lastId
{
    NSString *notificationName = NOTIF_MODEL_GET_PHOTOS;

    [ [NSNotificationCenter defaultCenter] addObserver:self
                                              selector:@selector(broadcastGetFeedsResult:)
                                                  name:notificationName
                                                object:nil];
    
    [APIConnect getRequest:API_FEEDS
                    params:nil
          notificationName:notificationName];
}

+ (void) broadcastGetFeedsResult: (NSNotification *)results
{

    [ [NSNotificationCenter defaultCenter] postNotificationName:NOTIF_GET_PHOTOS_SUCCESS
                                                         object:nil
                                                       userInfo:[results userInfo]];
}
@end
