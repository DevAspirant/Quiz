//
//  QuizViewController.h
//  Quiz
//
//  Created by ammar falmban on 7/31/13.
//  Copyright (c) 2013 iCSTH. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController
{
    int currentQuestionIndex;
    // the model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
}
// define the property
@property (weak, nonatomic) IBOutlet UILabel *questionField;
@property (weak, nonatomic) IBOutlet UILabel *answersField;

// define the instance method 
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@end
