//
//  Photo.h
//  FlopOrHit
//
//  Created by Rodel Medina on 3/10/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject

+ (void) getFeeds:(NSString *)authToken
           lastId:(NSString *)lastId;
@end
