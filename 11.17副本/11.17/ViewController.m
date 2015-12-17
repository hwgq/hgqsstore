//
//  ViewController.m
//  11.17
//
//  Created by HuangGuoQing on 11/17/15.
//  Copyright © 2015 HJL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSInteger a;
    NSInteger b;
    NSInteger i;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    a = 5;
    b = 5;
    i = 5;
    [self add];
}

- (void)add{

    [self adda];

}

- (void)adda{
    while (a > 3) {
        a = a - 4;
        i ++;
        a++;
        b++;
    }
    if (b > 1) {
        [self addb];
    }
    else if (a > 1&&b >0){
        a = a - 2;
        b = b - 1;
        i ++;
    }
    else NSLog(@"addb 盖子剩余：%ld, 空瓶剩余：%ld , 总共可以喝%ld瓶 ", a, b, i);
}

- (void)addb{
    while (b > 1) {
        b = b - 2;
        i ++;
        a++;
        b++;
    }
    if (a > 3) {
        [self adda];
    }
    else NSLog(@"addb 盖子剩余：%ld, 空瓶剩余：%ld , 总共可以喝%ld瓶 ", a, b, i);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
