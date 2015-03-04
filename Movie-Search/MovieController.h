//
//  MovieController.h
//  Movie-Search
//
//  Created by Joshua Howland on 6/18/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIImageView+AFNetworking.h"

@interface MovieController : NSObject

@property (nonatomic,strong) NSString *movieString;
@property (nonatomic,strong) NSString *releaseString;
@property (nonatomic,strong) NSDecimalNumber *ratingString;
@property (nonatomic,strong) NSString *descriptionString;
@property (nonatomic,strong) UIImageView *posterImage;

+ (MovieController *)sharedInstance;
- (void)fetchMovieWithName:(NSString *)name completion:(void (^)(BOOL success))completion;

@property (nonatomic, strong) NSArray *resultMovies;

@end
