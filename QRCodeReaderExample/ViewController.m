//
//  ViewController.m
//  QRCodeReaderExample
//
//  Created by Erick Bennett on 2/21/15.
//  Copyright (c) 2015 Erick Bennett. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeReaderViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)scaneQRCode:(id)sender {
    //Make sure you have imported the "QRCodeReaderViewController" folder from this project into your own and add the #import "QRCodeReaderViewController.h" to the top of the ViewController where you need to create this QRCodeReaderViewController
    
    //Create the controller. (new) is just a shortcut for alloc and init.
    QRCodeReaderViewController *reader = [QRCodeReaderViewController new];
    reader.modalPresentationStyle      = UIModalPresentationFormSheet;

    
    // this has a completion block that will return the QR code info. The QRCodeReaderViewController can also be set to share its result using a delegate method instead of using blocks and a completion handler.
    
    [reader setCompletionWithBlock:^(NSString *resultAsString) {
        [self dismissViewControllerAnimated:YES completion:^{
            NSLog(@"%@", resultAsString);
        }];
    }];
    
    [self presentViewController:reader animated:YES completion:NULL];
  }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
