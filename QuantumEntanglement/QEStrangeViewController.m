//
//  QEStrangeViewController.m
//  QuantumEntanglement
//
//  Created by Daniel Blakemore on 9/23/14.
//  Copyright (c) 2014 Pixio. All rights reserved.
//

#import "QEStrangeViewController.h"

#import "QEStrangeView.h"

@implementation QEStrangeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self == nil)
        return nil;
    
    return self;
}

#pragma mark - view related methods

- (void)loadView
{
    [self setView:[[QEStrangeView alloc] init]];
}

- (QEStrangeView*)contentView
{
    return (id)[self view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"Strange View"];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [[[self contentView] strangeField] becomeFirstResponder];
}

@end
