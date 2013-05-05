//
//  DetailViewController.m
//  Lablebi
//
//  Created by Slim Khan on 05/05/13.
//  Copyright (c) 2013 Slim Khan. All rights reserved.
//

#import "DetailViewController.h"
#import "MapKit/MapKit.h"

#import "LablebiData.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    _carte.showsUserLocation = YES;
    
    //LablebiData *sa7fa = [self.sa7fa getObjects:[self title]];
    //sa7fa.L
    NSLog([self title]);
    CLLocationCoordinate2D annotationCoord;
    
    annotationCoord.latitude = 36.836493;
    annotationCoord.longitude = 10.223808;
    
    MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc] init];
    annotationPoint.coordinate = annotationCoord;
    annotationPoint.title = @"Halfaouine";
    annotationPoint.subtitle = @"Lablebi LIGHT";
    [_carte addAnnotation:annotationPoint];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
