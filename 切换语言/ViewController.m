//
//  ViewController.m
//  切换语言
//
//  Created by zonelue004 on 16/1/15.
//  Copyright © 2016年 ZB_Xiao. All rights reserved.
//

#import "ViewController.h"
#import "InternationalControl.h"


#define KLOCALIZED_String(_STR_) [[InternationalControl bundle] localizedStringForKey:_STR_ value:nil table:@"Localizable"]

#define KLOCALIZED_UIImageName(_NAME_) [UIImage imageNamed:[[InternationalControl bundle] localizedStringForKey:_NAME_ value:nil table:@"Localizable"]]


@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",NSHomeDirectory());
    
    //注册通知，用于接收改变语言的通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(changeLanguage) name:@"changeLanguage" object:nil];
    //初始化应用语言
    [InternationalControl initUserLanguage];
    
    _inviteLabel.text = KLOCALIZED_String(@"pic.png");
    self.imgView.image = KLOCALIZED_UIImageName(@"pic.png");
    
}
- (IBAction)segmentedControl:(id)sender
{
    UISegmentedControl *seg = (UISegmentedControl *)sender;
    
    if (seg.selectedSegmentIndex == 0)
    {//中文
        [InternationalControl setUserlanguage:@"zh-Hans"];
    }
    else
    {//英文
        [InternationalControl setUserlanguage:@"en"];
    }
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"changeLanguage" object:nil];
}
-(void)changeLanguage
{
    _inviteLabel.text = KLOCALIZED_String(@"pic.png");
    self.imgView.image = KLOCALIZED_UIImageName(@"pic.png");
}
@end
