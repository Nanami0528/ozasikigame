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
    count = 1;
    cat.hidden=YES;
    gu.hidden=YES;
    red.hidden = NO;
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1
                                             target:self
                                           selector:@selector(time:)
                                           userInfo:nil
                                            repeats:YES];
}

-(void)time:(NSTimer*)timer{
    count += 1;
    NSLog(@"time:%d", count);
    
    if (count%4 == 0) {
        cat.hidden = YES; // 非表示になる。
        gu.hidden = NO;
        NSLog(@"1");
        
    }else if(count%4==1){
        
        red.hidden =YES;
        gu.hidden = YES;
        NSLog(@"2");
        
    }else if(count%2 == 0){
        
        cat.hidden = NO; // 見えるようになる。
        gu.hidden = YES;
        red.hidden = NO;
        NSLog(@"3");
    }else{
        cat.hidden=YES;
        gu.hidden=YES;
        red.hidden = NO;
        NSLog(@"4");
        
    }
    NSLog(@"a");
    
}
    
    




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
