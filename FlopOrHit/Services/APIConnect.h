//
//  APIConnect.h
//  FlopOrHit
//
//  Created by Rodel Medina on 3/10/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface APIConnect : NSObject

+(void)getRequest:(NSString *)url
           params:(NSDictionary *)params
 notificationName:(NSString *)notificationName;

+(void)postRequest:(NSString *)url
            params:(NSDictionary *)params
  notificationName:(NSString *)notificationName;

@end
