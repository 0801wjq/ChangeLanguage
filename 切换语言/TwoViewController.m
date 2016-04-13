//
//  TwoViewController.m
//  切换语言
//
//  Created by 肖志斌 on 16/1/15.
//  Copyright © 2016年 ZB_Xiao. All rights reserved.
//

#import "TwoViewController.h"
#import "InternationalControl.h"

#define KLOCALIZED_String(_STR_) [[InternationalControl bundle] localizedStringForKey:_STR_ value:nil table:@"Localizable"]

#define KLOCALIZED_UIImageName(_NAME_) [UIImage imageNamed:[[InternationalControl bundle] localizedStringForKey:_NAME_ value:nil table:@"Localizable"]]


@interface TwoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *lab;

@end

@implementation TwoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.imgView.image =KLOCALIZED_UIImageName(@"pic.png");
    self.lab.text = KLOCALIZED_String(@"invite");
    
}



@end
