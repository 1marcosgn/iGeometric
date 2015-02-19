//
//  AreasViewController.m
//  iGeometric
//
//  Created by Marcos García on 23/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "AreasViewController.h"

@interface AreasViewController ()

@end

@implementation AreasViewController

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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)llenaCampos{
    
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"iGeometric" message:@"All the fields are required" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
    
}



-(IBAction)AreaCirculo:(id)sender{
    
    if ([text_r.text isEqualToString:@""]) {
        
        [self llenaCampos];
        
    }
    else {
        
        float valor = [text_r.text floatValue];
        
        labelresultado.text = [NSString stringWithFormat:@"%f",[self Circulo:valor]]; 
    }
    
}
-(IBAction)AreaTriangulo:(id)sender{
    
    if ([text_b.text isEqualToString:@""] || [text_h.text isEqualToString:@""]) {
        
        [self llenaCampos];
        
    }
    else {
    
    float valor01 = [text_b.text floatValue];
    float valor02 = [text_h.text floatValue];
    
    labelresultado.text = [NSString stringWithFormat:@"%f",[self Triangulo:valor01 altura:valor02]];
        
    }
    
}
-(IBAction)AreaCuadrado:(id)sender{
    
    if ([text_r.text isEqualToString:@""]) {
        
        [self llenaCampos];
        
    }
    else {
    
    float valor01 = [text_r.text floatValue];
    
    labelresultado.text = [NSString stringWithFormat:@"%f", [self Cuadrado:valor01]];
    
    }
}

-(IBAction)AreaRectangulo:(id)sender{
    
    if ([text_b.text isEqualToString:@""] || [text_h.text isEqualToString:@""]) {
        
        [self llenaCampos];
        
    }
    else {
        
    float valor01 = [text_b.text floatValue];
    float valor02 = [text_h.text floatValue];
    
    labelresultado.text = [NSString stringWithFormat:@"%f", [self Rectangulo:valor01 altura:valor02]];
    
    }
    
}
-(IBAction)AreaPentagono:(id)sender{
    
    if ([text_P.text isEqualToString:@""] || [text_a.text isEqualToString:@""]) {
        
        [self llenaCampos];
        
    }
    else {

    float valor01 = [text_P.text floatValue];
    float valor02 = [text_a.text floatValue];
    
    labelresultado.text = [NSString stringWithFormat:@"%f", [self Pentagono:valor01 amenor:valor02]];
        
    }
    
}
-(IBAction)AreaTrapecio:(id)sender{
    
    if ([text_B.text isEqualToString:@""] || [text_b.text isEqualToString:@""] || [text_h.text isEqualToString:@""]) {
        
        [self llenaCampos];
        
    }
    else {
    
    float valor01 = [text_B.text floatValue];
    float valor02 = [text_b.text floatValue];
    float valor03 = [text_h.text floatValue];
    
    labelresultado.text = [NSString stringWithFormat:@"%f", [self Trapecio:valor01 bmenor:valor02 altura:valor03]];
    
    }
}

-(IBAction)AreaRomboide:(id)sender{
    
    if ([text_b.text isEqualToString:@""] || [text_h.text isEqualToString:@""]) {
        
        [self llenaCampos];
        
    }
    else {

        
    float valor01 = [text_b.text floatValue];
    float valor02 = [text_h.text floatValue];
    
    labelresultado.text = [NSString stringWithFormat:@"%f", [self Romboide:valor01 altura:valor02]];
        
    }
    
    
}
-(IBAction)Rombo:(id)sender{
    
    if ([text_D.text isEqualToString:@""] || [text_d.text isEqualToString:@""]) {
        
        [self llenaCampos];
        
    }
    else {
    
    float valor01 = [text_D.text floatValue];
    float valor02 = [text_d.text floatValue];
    
    labelresultado.text = [NSString stringWithFormat:@"%f", [self Rombo:valor01 dmenor:valor02]];
        
    }
    
}

float Area = 0.0;

-(float)Circulo:(float)radio{
    
    Area = 3.1416 * (radio * radio);
    return Area;
}

-(float)Triangulo:(float)base altura:(float)altura{
    
    Area = (base * altura)/2;
    return Area;
    
}

-(float)Cuadrado:(float)lado{
    
    Area = lado * lado;
    return Area;
    
}

-(float)Rectangulo:(float)base altura:(float)altura{
    
    Area = base * altura;
    return Area;
}

-(float)Rombo:(float)Dmayor dmenor:(float)dmenor{
    
    Area = (Dmayor * dmenor) / 2;
    return Area;
}

-(float)Romboide:(float)base altura:(float)altura{
    
    Area = base * altura;
    return Area;
    
}

-(float)Trapecio:(float)Bmayor bmenor:(float)bmenor altura:(float)altura{
    
    Area = ((Bmayor + bmenor)/2)*altura;
    return Area;
    
}

-(float)Pentagono:(float)perimetro amenor:(float)amenor{
    
    Area = ((perimetro * amenor)/2) * 1;
    return Area;
    
}

-(IBAction)Ocultar:(id)sender{
    
    
}

@end
