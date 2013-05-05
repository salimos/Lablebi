//
//  LablebiData.h
//  Lablebi
//
//  Created by Slim Khan on 05/05/13.
//  Copyright (c) 2013 Slim Khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LablebiData : NSObject

@property (strong) NSString *title;

@property (assign) float La;
@property (assign) float Lg;

- (id)initWithTitle:(NSString*)title La:(float)La Lg:(float)Lg;




@end
