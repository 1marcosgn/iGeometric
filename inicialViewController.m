//
//  inicialViewController.m
//  iGeometric
//
//  Created by Claudia Oliva on 29/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "inicialViewController.h"

@interface inicialViewController ()

@end

@implementation inicialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    UIImage *selectedImage0 = [UIImage imageNamed:@"01si.png"];
    UIImage *unselectedImage0 = [UIImage imageNamed:@"01no.png"];
    
    UIImage *selectedImage1 = [UIImage imageNamed:@"02si.png"];
    UIImage *unselectedImage1 = [UIImage imageNamed:@"02no.png"];
    
    UIImage *selectedImage2 = [UIImage imageNamed:@"03si.png"];
    UIImage *unselectedImage2 = [UIImage imageNamed:@"03no.png"];
    
    UIImage *selectedImage3 = [UIImage imageNamed:@"04si.png"];
    UIImage *unselectedImage3 = [UIImage imageNamed:@"04no.png"];
    
    
    UITabBar *tabBar = self.tabBarController.tabBar;
    UITabBarItem *item0 = [tabBar.items objectAtIndex:0];
    UITabBarItem *item1 = [tabBar.items objectAtIndex:1];
    UITabBarItem *item2 = [tabBar.items objectAtIndex:2];
    UITabBarItem *item3 = [tabBar.items objectAtIndex:3];
    
    [item0 setFinishedSelectedImage:selectedImage0 withFinishedUnselectedImage:unselectedImage0];
    [item1 setFinishedSelectedImage:selectedImage1 withFinishedUnselectedImage:unselectedImage1];
    [item2 setFinishedSelectedImage:selectedImage2 withFinishedUnselectedImage:unselectedImage2];
    [item3 setFinishedSelectedImage:selectedImage3 withFinishedUnselectedImage:unselectedImage3];
    
    
    [super viewDidLoad];
	
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"iGeometric" message:@"Touch the images to see info and formulas" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
    
    
    //cambiar color Boton Back
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    backButton.tintColor = [UIColor brownColor];
    self.navigationItem.backBarButtonItem = backButton;
    
    //Scroll_Principal
    [scroll setScrollEnabled:YES];
    [scroll setContentSize:CGSizeMake(57, 2077)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
