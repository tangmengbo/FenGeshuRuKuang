//
//  ViewController.m
//  FenGeShuRuTest
//
//  Created by 唐蒙波 on 2019/6/21.
//  Copyright © 2019 tangmengbo. All rights reserved.
//

#import "ViewController.h"

#define VIEW_WIDTH [UIScreen mainScreen].bounds.size.width
#define BILI [UIScreen mainScreen].bounds.size.width/375
#define SafeAreaTopHeight (([UIScreen mainScreen].bounds.size.height == 812.0 ||[UIScreen mainScreen].bounds.size.height == 896.0 )? 35 : 20)


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.checkNumberView = [[NNValidationCodeView alloc] initWithFrame:CGRectMake(30*BILI, 260*BILI+SafeAreaTopHeight-20*BILI, VIEW_WIDTH-60*BILI, 45*BILI) andLabelCount:6 andLabelDistance:9*BILI];
    self.checkNumberView.changedColor = [UIColor blackColor];
    [self.view addSubview:self.checkNumberView];
    __weak typeof(self) weakSelf = self;
    self.checkNumberView.codeBlock = ^(NSString *codeString) {
        NSLog(@"验证码:%@", codeString);
        if (codeString.length==6)
        {
            
        }
    };
}


@end
