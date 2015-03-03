//
//  NetworkController.m
//  Movie-Search
//
//  Created by Jake Herrmann on 3/3/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "NetworkController.h"
#import "API.h"

@implementation NetworkController

+ (AFHTTPSessionManager *)api{
    static AFHTTPSessionManager *api = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        api = [[AFHTTPSessionManager alloc]initWithBaseURL:[NSURL URLWithString:@"https://api.themoviedb.org/3/"]];
        api.responseSerializer = [AFJSONResponseSerializer serializer];
        api.requestSerializer = [AFJSONRequestSerializer serializer];
    });
    return api;
    
}
+ (NSDictionary *)parametersWithAPIKey:(NSDictionary *)parameters {
    
    NSMutableDictionary *parametersWithKey = [[NSMutableDictionary alloc] initWithDictionary:parameters];
    [parametersWithKey setObject:apiKey forKey:@"api_key"];
    
    return parametersWithKey;
}

@end
