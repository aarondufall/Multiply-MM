//
//  ViewController.m
//  Multiply
//
//  Created by Aaron Dufall on 10/03/2014.
//  Copyright (c) 2014 Aaron Dufall. All rights reserved.
//

#import "ViewController.h"
#import "math.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *myNumber;
@property (weak, nonatomic) IBOutlet UILabel *myMultiplier;
@property (weak, nonatomic) IBOutlet UILabel *myAnswer;

- (IBAction)multiplierSlider:(UISlider *)sender;

- (IBAction)onCalculateButtonPressed:(id)sender;
- (void)calculateAnswer;
@end

@implementation ViewController{
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myNumber.delegate = self;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self calculateAnswer];
    [textField resignFirstResponder];
    
    return YES;
}

- (void)calculateAnswer
{
    int number = [[self.myNumber text]integerValue];
    int multiplier = [[self.myMultiplier text]integerValue];
    int answer = number * multiplier;
    if (answer > 10) {
    self.view.backgroundColor = [UIColor greenColor];
    }
    self.myAnswer.text = [NSString stringWithFormat:@"%d", answer];
}



- (IBAction)multiplierSlider:(UISlider *)sender {

    self.myMultiplier.text = [NSString stringWithFormat:@"%d",(int)round(sender.value)];
}

- (IBAction)onCalculateButtonPressed:(id)sender {
   
    [self calculateAnswer];

}
@end
