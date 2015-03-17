//
//  APIConnect.m
//  FlopOrHit
//
//  Created by Rodel Medina on 3/10/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import "APIConnect.h"
#import "Constants.h"

@implementation APIConnect
+ (AFHTTPSessionManager *)manager
{
    NSURL *baseURL = [NSURL URLWithString:API_DOMAIN];
    AFHTTPSessionManager *mngr = [[AFHTTPSessionManager alloc] initWithBaseURL:baseURL];
    return mngr;
}

+(void)getRequest:(NSString *)path
           params:(NSDictionary *)params
 notificationName:(NSString *)notificationName
{
    [ [self manager] GET:path
              parameters:params
                 success:^(NSURLSessionDataTask *operation, id responseObject) {
                     NSLog(@"GET SUCCESS for %@", path);
                     [ [NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                          object:nil
                                                                        userInfo:responseObject ];
             
         } failure:^(NSURLSessionDataTask *operation, NSError *error) {
             NSLog(@"GET ERROR for %@", path);
             [ [NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                  object:nil ];
         }];
}


+(void)postRequest:(NSString *)path
            params:(NSDictionary *)params
  notificationName:(NSString *)notificationName
{
    [ [self manager] POST:path
              parameters:params
                 success:^(NSURLSessionDataTask *operation, id responseObject) {
                     NSLog(@"POST SUCCESS for %@", path);
                     [ [NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                          object:nil
                                                                        userInfo:responseObject ];
                     
                 } failure:^(NSURLSessionDataTask *operation, NSError *error) {
                     NSLog(@"POST ERROR for %@", path);
                     [ [NSNotificationCenter defaultCenter] postNotificationName:notificationName
                                                                          object:nil ];
                 }];
}
@end