//
//  ViewController.h
//  MovieBreak
//
//  Created by Triveni Banpela on 5/11/16.
//  Copyright © 2016 Triveni Banpela. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *winView;

@property (weak, nonatomic) IBOutlet UIImageView *head;
@property (weak, nonatomic) IBOutlet UILabel *winnerlbl;
@property (weak, nonatomic) IBOutlet UIImageView *lefthand;
@property (weak, nonatomic) IBOutlet UIImageView *back;
@property (weak, nonatomic) IBOutlet UIImageView *rightleg;
@property (weak, nonatomic) IBOutlet UIImageView *leftleg;
@property (weak, nonatomic) IBOutlet UIImageView *righthand;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *ButtonArray;

@end

