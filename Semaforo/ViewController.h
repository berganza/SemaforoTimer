//
//  ViewController.h
//  Semaforo
//
//  Created by LLBER on 13/07/13.
//  Copyright (c) 2013 Berganza. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property int numero;

@property NSTimer * contador;

@property (weak, nonatomic) IBOutlet UIButton *rojo;
@property (weak, nonatomic) IBOutlet UIButton *verde;


@property (weak, nonatomic) IBOutlet UILabel *etiqueta;

@end
