//
//  LablebiDocs.m
//  Lablebi
//
//  Created by Slim Khan on 08/05/13.
//  Copyright (c) 2013 Slim Khan. All rights reserved.
//

#import "LablebiDocs.h"
#import "LablebiData.h"

@implementation LablebiDocs

-(id)initWithTitle:(NSString *)title La:(float)La Lg:(float)Lg{
    if ((self = [super init])) {
        self.data = [[LablebiData alloc] initWithTitle:title];
        self.La = La;
        self.Lg = Lg;
    }
    return self;
}


@end
