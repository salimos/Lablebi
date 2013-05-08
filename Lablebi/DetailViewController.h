//
//  DetailViewController.h
//  Lablebi
//
//  Created by Slim Khan on 05/05/13.
//  Copyright (c) 2013 Slim Khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "mapkit/mapkit.h"

@class LablebiDocs;


@interface DetailViewController : UIViewController

@property (strong, nonatomic) LablebiDocs * detailItem;

@property (weak, nonatomic) IBOutlet UINavigationItem *detail;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet MKMapView *carte;

//@property (assign) float La;
//@property (assign) float Lg;

@property (strong) NSMutableArray *sa7fa;


@end
