//
//  ViewController.m
//  02-多物理仿真
//
//  Created by 王鹏飞 on 16/1/9.
//  Copyright © 2016年 王鹏飞. All rights reserved.
//

#import "ViewController.h"
#import "WPFDemoController.h"

@interface ViewController ()
{
    NSArray *_dynamicArr;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    _dynamicArr = @[@"吸附行为", @"推动行为", @"刚性附着行为", @"弹性附着行为", @"碰撞检测"];
    
    self.tableView.tableFooterView = [[UIView alloc] init];
    

    
}

// 几组
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

// 几行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

// 每行的具体内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // 1. 设置可重用id
    NSString *identifier = @"helloCell";
    
    // 2. 根据可重用id 去tableView 的缓存区去找
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    // 3. 如果找不到，就重新实例化一个
    if (nil == cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    cell.textLabel.text = _dynamicArr[indexPath.row];
    
    return cell;
}

// 执行代理方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    // 1. 实例化一个仿真管理器
    WPFDemoController *demoVc = [[WPFDemoController alloc] init];
    
    // 2. 设置标题
    demoVc.title = _dynamicArr[indexPath.row];
    
    // 3. 传递功能类型
    demoVc.function = (int)indexPath.row;
    
    // 4. 跳转界面
    [self.navigationController pushViewController:demoVc animated:YES];

}



@end
