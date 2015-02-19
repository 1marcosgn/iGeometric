//
//  AreasViewController.h
//  iGeometric
//
//  Created by Marcos García on 23/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AreasViewController : UIViewController{
    
    IBOutlet UITextField *text_r;
    IBOutlet UITextField *text_b;
    IBOutlet UITextField *text_h;
    IBOutlet UITextField *text_P;
    IBOutlet UITextField *text_a;
    IBOutlet UITextField *text_B;
    IBOutlet UITextField *text_D;
    IBOutlet UITextField *text_d;
    IBOutlet UITextField *text_l;
    
    IBOutlet UILabel *labelresultado;
    
}

-(IBAction)AreaCirculo:(id)sender;
-(IBAction)AreaTriangulo:(id)sender;
-(IBAction)AreaCuadrado:(id)sender;

-(IBAction)AreaRectangulo:(id)sender;
-(IBAction)AreaPentagono:(id)sender;
-(IBAction)AreaTrapecio:(id)sender;

-(IBAction)AreaRomboide:(id)sender;
-(IBAction)Rombo:(id)sender;


-(IBAction)Ocultar:(id)sender;


@end
