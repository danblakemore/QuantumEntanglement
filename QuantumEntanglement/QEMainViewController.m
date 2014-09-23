//
//  QEMainViewController.m
//  QuantumEntanglement
//
//  Created by Daniel Blakemore on 9/23/14.
//  Copyright (c) 2014 Pixio. All rights reserved.
//

#import "QEMainViewController.h"

#import "QEMainView.h"
#import "QECharmViewController.h"
#import "QENormalViewController.h"
#import "QEStrangeViewController.h"

@implementation QEMainViewController

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
    [self setView:[[QEMainView alloc] init]];
}

- (QEMainView*)contentView
{
    return (id)[self view];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setTitle:@"Main View"];
    
    [[[self contentView] normalButton] addTarget:self action:@selector(normalPressed) forControlEvents:UIControlEventTouchUpInside];
    [[[self contentView] strangeButton] addTarget:self action:@selector(strangePressed) forControlEvents:UIControlEventTouchUpInside];
    [[[self contentView] charmButton] addTarget:self action:@selector(charmPressed) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - button handlers

- (void)normalPressed
{
    QENormalViewController * nvc = [[QENormalViewController alloc] init];
    [[self navigationController] pushViewController:nvc animated:TRUE];
}

- (void)strangePressed
{
    QEStrangeViewController * qvc = [[QEStrangeViewController alloc] init];
    [[self navigationController] pushViewController:qvc animated:TRUE];
}

- (void)charmPressed
{
    QECharmViewController * cvc = [[QECharmViewController alloc] init];
    [[self navigationController] pushViewController:cvc animated:TRUE];
}

@end
