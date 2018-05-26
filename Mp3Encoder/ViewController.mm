//
//  ViewController.m
//  Mp3Encoder
//
//  Created by wenqi on 2018/5/26.
//  Copyright © 2018年 wenqi. All rights reserved.
//

#import "ViewController.h"
#import "mp3_encoder.h"
#import "CommonUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)startEncode:(id)sender {
    NSLog(@"Start Encode...");
    Mp3Encoder* encoder = new Mp3Encoder();
    const char* pcmFilePath = [[CommonUtil bundlePath:@"vocal.pcm"] cStringUsingEncoding:NSUTF8StringEncoding];
    const char* mp3FilePath = [[CommonUtil documentsPath:@"vocal.mp3"] cStringUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"%s", mp3FilePath);
    int sampleRate = 44100;
    int channels = 2;
    int bitRate = 120 * 1024;
    encoder->Init(pcmFilePath, mp3FilePath, sampleRate, channels, bitRate);
    encoder->Encode();
    encoder->Destory();
    delete encoder;
    NSLog(@"Encode Success");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
