//
//  APIConnect.m
//  FlopOrHit
//
//  Created by Rodel Medina on 3/10/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import "APIConnect.h"

@implementation APIConnect
+(void)getRequest:(NSString *)url
           params:(NSDictionary *)params
 notificationName:(NSString *)notificationName
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:url
      parameters:params
         success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSLog(@"GET SUCCESS for %@", url);
             [ [NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                  object:nil
                                                                userInfo:responseObject ];
             
         } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
             NSLog(@"GET ERROR for %@", url);
             [ [NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                  object:nil ];
         }];
}


+(void)postRequest:(NSString *)url
            params:(NSDictionary *)params
  notificationName:(NSString *)notificationName
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:url
       parameters:params
          success:^(AFHTTPRequestOperation *operation, id responseObject) {
             NSLog(@"POST SUCCESS for %@", url);
             [ [NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                  object:nil
                                                                userInfo:responseObject ];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"POST ERROR for %@", url);
            [ [NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                 object:nil ];
    }];
}
@end