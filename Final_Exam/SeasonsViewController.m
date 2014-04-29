//
//  SecondViewController.m
//  Final_Exam
//
//  Created by Sofia Garcia Ramos on 4/29/14.
//  Copyright (c) 2014 Sofia Garcia Ramos. All rights reserved.
//

#import "SeasonsViewController.h"
#import "SeasonsCell.h"



@interface SeasonsViewController ()
{
    UIWebView *videoView;
}

@end

@implementation SeasonsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    astr__Seasons = [[NSArray alloc] initWithObjects:@"Primavera", @"Verano", @"Otoño", @"Invierno",nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
#pragma mark -
#pragma mark Table View Data Source Methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SeasonsCell";
    
    SeasonsCell *cell = (SeasonsCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[SeasonsCell alloc]
                initWithStyle:UITableViewCellStyleDefault
                reuseIdentifier:CellIdentifier];
    }
    
    cell.Lb_season.text = astr__Seasons[[indexPath row]];
    
    
    cell.selectionStyle = UITableViewCellSelectionStyleBlue;
    
    
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    switch (indexPath.row) {
        case 0:
            [videoView removeFromSuperview];
            [self embedYouTube:@"https://www.youtube.com/embed/fVuLtOlwGuY" frame:CGRectMake(10, 300, 300, 150)];
            break;
            
        case 1:
            [videoView removeFromSuperview];
            [self embedYouTube:@"http://www.youtube.com/embed/KM3yCEnfLDg" frame:CGRectMake(10, 300, 300, 150)];
            break;
            
        case 2:
            [videoView removeFromSuperview];
            [self embedYouTube:@"https://www.youtube.com/embed/npjdldL4Q9w" frame:CGRectMake(10, 300, 300, 150)];
            break;
            
        case 3:
            [videoView removeFromSuperview];
            [self embedYouTube:@"https://www.youtube.com/embed/PXduseJzs5M" frame:CGRectMake(10, 300, 300, 150)];
            break;
            
        default:
            break;
    }
    
}

- (void)embedYouTube:(NSString *)urlString frame:(CGRect)frame {
    NSString *embedHTML = @"\
    <html><head>\
    <style type=\"text/css\">\
    body {\
    background-color: transparent;\
    color: white;\
    }\
    </style>\
    </head><body style=\"margin:0\">\
    <iframe id=\"yt\" src=\"%@\" \
    width=\"%0.0f\" height=\"%0.0f\"></iframe>\
    </body></html>";
    NSString *html = [NSString stringWithFormat:embedHTML, urlString, frame.size.width, frame.size.height];
    videoView = [[UIWebView alloc] initWithFrame:frame];
    [videoView loadHTMLString:html baseURL:nil];
    [self.view addSubview:videoView];
    
}





@end
