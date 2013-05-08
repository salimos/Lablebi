//
//  LablebiDocs.h
//  Lablebi
//
//  Created by Slim Khan on 08/05/13.
//  Copyright (c) 2013 Slim Khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LablebiData;

@interface LablebiDocs : NSObject

@property (strong) LablebiData * data;
@property (assign) float La;
@property (assign) float Lg;

- (id)initWithTitle:(NSString*)title La:(float)La Lg:(float)Lg;


@end
