//
//  CNLiveViewController.m
//  CNLiveSDKs
//
//  Created by oldSixMrZhang on 03/27/2019.
//  Copyright (c) 2019 oldSixMrZhang. All rights reserved.
//

#import "CNLiveViewController.h"

@interface CNLiveViewController ()

@end

@implementation CNLiveViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"CNLivePlayerBundles" ofType:@"bundle"];//KSYGPUResource  CNLivePlayerBundle
    NSBundle *imageBundle = [NSBundle bundleWithPath:path];
    NSString *path1 = [imageBundle pathForResource:@"CNLivePlayerBundle" ofType:@"bundle"];
    NSBundle *imageBundle1 = [NSBundle bundleWithPath:path1];
    NSURL *modelURL = [imageBundle1 URLForResource:@"VODModel" withExtension:@"mom"];
    NSLog(@"asdasd");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
