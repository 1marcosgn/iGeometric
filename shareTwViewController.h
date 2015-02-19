//
//  shareTwViewController.h
//  iGeometric
//
//  Created by Claudia Oliva on 29/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface shareTwViewController : UIViewController{
    
    IBOutlet UIImageView *imagenView;
    IBOutlet UILabel *campoTexto;
    
}

- (IBAction)showTweetSheet;

@end
