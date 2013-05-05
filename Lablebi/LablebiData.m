//
//  LablebiData.m
//  Lablebi
//
//  Created by Slim Khan on 05/05/13.
//  Copyright (c) 2013 Slim Khan. All rights reserved.
//

#import "LablebiData.h"

@implementation LablebiData


-(id)initWithTitle:(NSString *)title La:(float)La Lg:(float)Lg {
    if ((self = [super init])) {
        self.title = title;
        self.La = La;
        self.Lg = Lg;
        
    }
    return self;
}




@end
