//
//  FiguresViewController.m
//  iGeometric
//
//  Created by Claudia Oliva on 29/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "FiguresViewController.h"

@interface FiguresViewController ()

@end

@implementation FiguresViewController

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

int figuraNo = 0;

-(IBAction)nextFigure:(id)sender{
    
    if (figuraNo == 0) {
        
        imageFigure.image = [UIImage imageNamed:@"circ.png"];
        labelDescription.text = @"A simple shape of Euclidean geometry consisting of those points in a plane that are equidistant from a given point, the centre.";
        
        labelName.text = @"Circle";
                   
    }
    
    if (figuraNo == 1) {
        
        imageFigure.image = [UIImage imageNamed:@"trig.png"];
        labelDescription.text = @"A polygon with three corners or vertices and three sides or edges which are line segments.";
        
        labelName.text = @"Triangle";
        
    }
    
    if (figuraNo == 2) {
        
        imageFigure.image = [UIImage imageNamed:@"cubo3d.png"];
        labelDescription.text = @"In geometry, a square is a regular quadrilateral.";
        
        labelName.text = @"Square";
        
    }
    
    if (figuraNo == 3) {
        
        imageFigure.image = [UIImage imageNamed:@"rectangle3d.png"];
        labelDescription.text = @"In Euclidean plane geometry, a rectangle is any quadrilateral with four right angles.";
        
        labelName.text = @"Rectangle";
        
    }

    
    if (figuraNo == 4) {
        
        imageFigure.image = [UIImage imageNamed:@"pentagono3d.png"];
        labelDescription.text = @"In geometry, a pentagon is any five-sided polygon.";
        
        labelName.text = @"Pentagon";
        
    }
    
    if (figuraNo == 5) {
        
        imageFigure.image = [UIImage imageNamed:@"trapecio3d.png"];
        labelDescription.text = @"In Euclidean geometry, a convex quadrilateral with at least one pair of parallel sides.";
        
        labelName.text = @"Trapezed";
        
    }

    if (figuraNo == 6) {
        
        imageFigure.image = [UIImage imageNamed:@"romb.png"];
        labelDescription.text = @"Of quadrilateral figures, a square is that which is both equilateral and right-angled.";
        
        labelName.text = @"Rhomboid";
    }
    
    if (figuraNo == 7) {
        
        imageFigure.image = [UIImage imageNamed:@"rombo3d.png"];
        labelDescription.text = @"A plane quadrangle with equal sides.";
        
        labelName.text = @"Diamond";
        
    }

    
    if (figuraNo >= 8) {
        
        imageFigure.image = [UIImage imageNamed:@"trig.png"];
        labelDescription.text = @"A polygon with three corners or vertices and three sides or edges which are line segments.";
        
        labelName.text = @"Triangle";
        
        figuraNo = 0;
    
    }
    else {
        
        figuraNo = figuraNo + 1;
    
    }

    
    
}

@end
