//
//  NetworkController.h
//  Movie-Search
//
//  Created by Jake Herrmann on 3/3/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

@interface NetworkController : NSObject

+ (AFHTTPSessionManager *)api;


@end
