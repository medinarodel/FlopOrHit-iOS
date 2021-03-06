//
//  APIConnectTest.m
//  FlopOrHit
//
//  Created by Rodel Medina on 3/10/15.
//  Copyright (c) 2015 Sourcepad. All rights reserved.
//

#import "Kiwi.h"

SPEC_BEGIN(APIConnect)

describe(@"APIConnect", ^{
    
    context(@"when instantiated", ^{
        __block APIConnect *controller = nil;
        
        beforeEach(^{
            controller = [[APIConnect alloc] init];
        });
        
        it(@"it should have instantiated", ^{
            [controller shouldNotBeNil];
        });
        
        it(@"it should have UITableViewController", ^{
            /*
             WHAT TO DO HERE
             */
        });
        
        afterEach(^{
            controller = nil;
        });
        
    });
});

SPEC_END