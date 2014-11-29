//
//  ViewController.m
//  ozasikigame
//
//  Created by nanami on 2014/11/29.
//  Copyright (c) 2014年 nanami. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSTimer *timer;
    int count;
}



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    timer = [NSTimer scheduledTimerWithTimeInterval:1
                                             target:self
                                           selector:@selector(time:)
                                           userInfo:nil
                                            repeats:YES];
    count = 0;
}

-(void)time:(NSTimer*)timer{
    count += 1;
    NSLog(@"time:%d", count);

if (count%3==0) {
    a.hidden = YES; // 非表示になる。
}else{

    a.hidden = NO; // 見えるようになる。
    
}

    
    }
    
    




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
