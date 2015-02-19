//
//  FiguresViewController.h
//  iGeometric
//
//  Created by Claudia Oliva on 29/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FiguresViewController : UIViewController{
    
    IBOutlet UIImageView *imageFigure;
    IBOutlet UILabel *labelDescription;
    IBOutlet UILabel *labelName;
    
}

-(IBAction)nextFigure:(id)sender;

@end
