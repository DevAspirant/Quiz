//
//  QuizViewController.m
//  Quiz
//
//  Created by ammar falmban on 7/31/13.
//  Copyright (c) 2013 iCSTH. All rights reserved.
//

#import "QuizViewController.h"

@interface QuizViewController ()

@end

@implementation QuizViewController
@synthesize questionField ;
@synthesize answersField;
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // create 2 arrays and make a pointer point to them
    questions = [[NSMutableArray alloc]init];
    answers   = [[NSMutableArray alloc]init];
    
    // add questions and answers to the arrays
    [questions addObject:@"What is 2 + 2 ?"];
    [answers   addObject:@"4"];
    
    [questions addObject:@"What is the capital of Saudi Arabia ?"];
    [answers   addObject:@"Riyadh"];
    
    [questions addObject:@"What is your name ?"];
    [answers   addObject:@"Ammar"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showQuestion:(id)sender {
    
    // step to the next question
    currentQuestionIndex++;
    
    //Am I past the last Question
    if(currentQuestionIndex == [questions count]){
    // go back to first question
    currentQuestionIndex = 0;
    }
    // Get the string at that index in the question array
    NSString *questionText =
    [questions objectAtIndex:currentQuestionIndex];
    
    // output the stirng on the console
    NSLog(@"Display Question:%@",questionText);
    
    // Display the string in the question field
    [questionField setText:questionText];
    
    // clear the answer field
    [answersField setText:@"??"];
    
}
- (IBAction)showAnswer:(id)sender {
    
    // what is the answer to the current question
    NSString *answerText =
    [answers objectAtIndex:currentQuestionIndex];

    // Display on the answers filed
    [answersField setText:answerText];
    
}
@end
