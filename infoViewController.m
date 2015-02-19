//
//  infoViewController.m
//  iGeometric
//
//  Created by Marcos Raúl García Nolasco on 22/08/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "infoViewController.h"

@interface infoViewController ()

@end

@implementation infoViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
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


-(IBAction)OpenWeb:(id)sender{
    
    NSURL *url = [ [ NSURL alloc ] initWithString: @"http://fipade.com/fipade/index.php?option=com_content&view=article&id=50&Itemid=57" ];
    
    [[UIApplication sharedApplication] openURL:url];    
    
    
    
}

@end
