//
//  SecondViewController.h
//  Final_Exam
//
//  Created by Sofia Garcia Ramos on 4/29/14.
//  Copyright (c) 2014 Sofia Garcia Ramos. All rights reserved.
//

#import <UIKit/UIKit.h>

NSArray     *astr__Seasons;

@interface SeasonsViewController : UIViewController <UITableViewDataSource, UITableViewDelegate >


@property (strong, nonatomic) IBOutlet UIWebView *webview;


@end
