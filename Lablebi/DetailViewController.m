//
//  DetailViewController.m
//  Lablebi
//
//  Created by Slim Khan on 05/05/13.
//  Copyright (c) 2013 Slim Khan. All rights reserved.
//

#import "DetailViewController.h"
#import "MapKit/MapKit.h"

#import "LablebiDocs.h"
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
        
        self.title = self.detailItem.data.title;
        
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
    _carte.showsUserLocation = YES;
    
    //Centrer la Carte @ UserLocation :aucune idée pourquoi ce code marche :D 
    [_carte setCenterCoordinate:_carte.userLocation.location.coordinate animated:YES];

    //Déclaration du Pt d'annotation
    CLLocationCoordinate2D annotationCoord;
    
    //Remplissage du code depuis notre master (detailIteam)
    annotationCoord.latitude = self.detailItem.La;
    annotationCoord.longitude = self.detailItem.Lg;
    
    //declaration du marqueur 
    MKPointAnnotation *annotationPoint = [[MKPointAnnotation alloc] init];
    annotationPoint.coordinate = annotationCoord;
    annotationPoint.title = self.detailItem.data.title;
    annotationPoint.subtitle = @"Lablebi LIGHT";
    //Ajout du marqueur
    [_carte addAnnotation:annotationPoint];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
