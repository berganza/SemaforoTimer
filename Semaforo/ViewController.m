//
//  ViewController.m
//  Semaforo
//
//  Created by LLBER on 13/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    _numero = 1;
    _contador = [NSTimer scheduledTimerWithTimeInterval:(1)
                                                 target:self
                                               selector:@selector(semaforo)
                                               userInfo:nil
                                                repeats:YES];
    [super viewDidLoad];
}
-(void)semaforo {
    
    if (_numero == 1) {
        
        [UIView setAnimationDuration:5];
        
        [_rojo setAlpha:0];
        [_verde setAlpha:1];
        _numero=0;
        _etiqueta.text = @"VERDE";
        _etiqueta.textColor=[UIColor greenColor];
        
    } else {
        
        [UIView setAnimationDuration:5];
        [_rojo setAlpha:1];
        [_verde setAlpha:0];
        _numero=1;
        _etiqueta.text = @"ROJO";
        _etiqueta.textColor=[UIColor redColor];
    }
    
    [UIView commitAnimations];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
