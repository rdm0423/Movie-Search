//
//  NetworkController.m
//  Movie-Search
//
//  Created by Jake Herrmann on 3/3/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "NetworkController.h"

@implementation NetworkController

+ (AFHTTPSessionManager *)api{
    static AFHTTPSessionManager *api = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        api = [[AFHTTPSessionManager alloc]initWithBaseURL:[NSURL URLWithString:@"http://docs.themoviedb.apiary.io/"]];
        api.responseSerializer = [AFJSONResponseSerializer serializer];
    });
    return api;
    
}


@end
