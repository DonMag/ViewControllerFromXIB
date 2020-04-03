//
//  ViewController.m
//  ViewControllerFromXIB
//
//  Created by Don Mag on 4/3/20.
//  Copyright © 2020 Don Mag. All rights reserved.
//

#import "ViewController.h"
#import "VCMain.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)didTap:(id)sender {
	
	VCMain *vc = [[VCMain alloc] initWithNibName:@"VCMain" bundle:nil];
	
	UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:vc];
	navController.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	navController.modalPresentationStyle = UIModalPresentationFullScreen;
	[self presentViewController:navController animated:YES completion:nil];
	
}

@end
