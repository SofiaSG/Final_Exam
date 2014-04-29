//
//  ColorsViewController.m
//  Final_Exam
//
//  Created by Sofia Garcia Ramos on 4/29/14.
//  Copyright (c) 2014 Sofia Garcia Ramos. All rights reserved.
//

#import "ColorsViewController.h"

@interface ColorsViewController ()

@end

@implementation ColorsViewController

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
    self.Img_colors.backgroundColor = [UIColor colorWithRed:self.Sl_red.value/255 green:self.Sl_green.value/255 blue:self.Sl_blue.value/255 alpha:1];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Sld_red:(id)sender
{
    self.Img_colors.backgroundColor = [UIColor colorWithRed:self.Sl_red.value/255 green:self.Sl_green.value/255 blue:self.Sl_blue.value/255 alpha:1];
}

- (IBAction)Sld_green:(id)sender {
    self.Img_colors.backgroundColor = [UIColor colorWithRed:self.Sl_red.value/255 green:self.Sl_green.value/255 blue:self.Sl_blue.value/255 alpha:1];
}

- (IBAction)Sld_blue:(id)sender
{
    self.Img_colors.backgroundColor = [UIColor colorWithRed:self.Sl_red.value/255 green:self.Sl_green.value/255 blue:self.Sl_blue.value/255 alpha:1];
}
@end
