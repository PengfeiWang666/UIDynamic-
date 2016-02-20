//
//  WPFDemoController.m
//  02-多物理仿真
//
//  Created by 王鹏飞 on 16/1/10.
//  Copyright © 2016年 王鹏飞. All rights reserved.
//

#import "WPFDemoController.h"
#import "WPFSnapView.h"
#import "WPFPushView.h"
#import "WPFAttachmentView.h"
#import "WPFSpringView.h"
#import "WPFCollisionView.h"

@interface WPFDemoController ()

@end

@implementation WPFDemoController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    WPFBaseView *baseView = nil;
    
    // 根据不同的功能类型选择不同的视图
    // 运用了多态
    switch (self.function) {
        case kDemoFunctionSnap:
            baseView = [[WPFSnapView alloc] init];
            break;
            
        case kDemoFunctionPush:
            baseView = [[WPFPushView alloc] init];
            break;
            
        case kDemoFunctionAttachment:
            baseView = [[WPFAttachmentView alloc] init];
            break;
            
        case kDemoFunctionSpring:
            baseView = [[WPFSpringView alloc] init];
            break;
            
        case kDemoFunctionCollision:
            baseView = [[WPFCollisionView alloc] init];
            break;
            
        default:
            break;
    }
    
    baseView.frame = self.view.bounds;
    
    [self.view addSubview:baseView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
