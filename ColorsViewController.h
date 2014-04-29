//
//  ColorsViewController.h
//  Final_Exam
//
//  Created by Sofia Garcia Ramos on 4/29/14.
//  Copyright (c) 2014 Sofia Garcia Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ColorsViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISlider *Sl_red;
@property (strong, nonatomic) IBOutlet UISlider *Sl_green;
@property (strong, nonatomic) IBOutlet UISlider *Sl_blue;

- (IBAction)Sld_red:(id)sender;
- (IBAction)Sld_green:(id)sender;
- (IBAction)Sld_blue:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *Img_colors;

@end
