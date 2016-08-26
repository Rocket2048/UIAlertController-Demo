//
//  ViewController.m
//  UIAlertController-Demo
//
//  Created by Ricky Lin on 16/8/26.
//  Copyright © 2016年 OneFish. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertController+OFAlert.h"

#define kTitle @"title"
#define kMsg @"This is message body"
#define kCancel @"Cancel"
#define kOK @"OK"
#define kOther @"Other"
#define kAnother @"Another"
#define kDestructive @"Destructive"
#define kPlaceHolder @"PlaceHolder"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *_dataSource;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *styleSeg;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _dataSource = @[@"only cancel",@"only btn",@"cancel + btn",@"cancel + 2*btn",@"btn + destructive",@"cancel + btn + destructive",@"cancel + btn + textField",@"cancel + btn + 2*textField",@"cancel + 2*btn + 2*textField",@"cancel +2*btn + destructive",@"cancel + 2*btn + 2*textField + destructive"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld,%@",indexPath.row,_dataSource[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIAlertControllerStyle style = UIAlertControllerStyleAlert;
    if (self.styleSeg.selectedSegmentIndex == 1) {
        style = UIAlertControllerStyleActionSheet;
    }
    switch (indexPath.row) {
        case 0:
            
            [UIAlertController alert:self style:style title:kTitle message:kMsg cancelTitle:kCancel cancel:^{
                
            }];
            break;
        case 1:
            [UIAlertController alert:self style:style title:kTitle message:kMsg otherTitle:kOther other:^{
                
            }];
            break;
        case 2:
            [UIAlertController alert:self style:style title:kTitle message:kMsg cancelTitle:kCancel otherTitle:kOther cancel:^{
                
            }other:^{
                
            }];
            break;
        case 3:
            [UIAlertController alert:self style:style title:kTitle message:kMsg cancelTitle:kCancel otherTitle:kOther anotherTitle:kAnother cancel:^{
            
            }other:^{
                
            }another:^{
                
            }];
            break;
        case 4:
            [UIAlertController alert:self style:style title:kTitle message:kMsg otherTitle:kOther destructiveTitle:kDestructive other:^{
                
            } destructive:^{
                
            }];
            break;
        case 5:
            [UIAlertController alert:self style:style title:kTitle message:kMsg cancelTitle:kCancel otherTitle:kOther destructiveTitle:kDestructive cancel:^{
                
            } other:^{
                
            } destructive:^{
                
            }];
            break;
        case 6:
        {
            __block UIAlertController *alertVC = [UIAlertController alert:self title:kTitle message:kMsg cancelTitle:kCancel otherTitle:kOther cancel:^{
                
            } other:^{
                UITextField *textField = alertVC.textFields.firstObject;
                NSLog(@"input:%@",textField.text);
                
            } textField:^(UITextField *textField) {
                textField.placeholder = kPlaceHolder;

            }];
        }
            break;
        case 7:
        {
            __block UIAlertController *alertVC = [UIAlertController alert:self title:kTitle message:kMsg cancelTitle:kCancel otherTitle:kOther cancel:^{
                
            } other:^{
                UITextField *textField = alertVC.textFields.firstObject;
                UITextField *anotherField = alertVC.textFields.lastObject;
                NSLog(@"input:%@ and %@",textField.text,anotherField.text);

            } textField:^(UITextField *textField) {
                textField.placeholder = kPlaceHolder;

            } anotherField:^(UITextField *textField) {
                textField.placeholder = kPlaceHolder;

            }];
        }
            break;
        case 8:
        {
            __block UIAlertController *alertVC = [UIAlertController alert:self title:kTitle message:kMsg cancelTitle:kCancel otherTitle:kOther anotherTitle:kAnother cancel:^{
                
            } other:^{
                UITextField *textField = alertVC.textFields.firstObject;
                UITextField *anotherField = alertVC.textFields.lastObject;
                NSLog(@"input:%@ and %@",textField.text,anotherField.text);
            } another:^{
                UITextField *textField = alertVC.textFields.firstObject;
                UITextField *anotherField = alertVC.textFields.lastObject;
                NSLog(@"input:%@ and %@",textField.text,anotherField.text);
                
            } textField:^(UITextField *textField) {
                textField.placeholder = kPlaceHolder;
                
            } anotherField:^(UITextField *textField) {
                textField.placeholder = kPlaceHolder;
                
            }];
            break;
        }
        case 9:
            [UIAlertController alert:self style:style title:kTitle message:kMsg cancelTitle:kCancel otherTitle:kOther anotherTitle:kAnother destructiveTitle:kDestructive cancel:^{
                
            } other:^{
                
            } another:^{
                
            } destructive:^{
                
            }];
            break;
        case 10:
        {
            __block UIAlertController *alertVC = [UIAlertController alert:self style:style title:kTitle message:kMsg cancelTitle:kCancel otherTitle:kOther anotherTitle:kAnother destructiveTitle:kDestructive cancel:^{
                
            } other:^{
                UITextField *textField = alertVC.textFields.firstObject;
                UITextField *anotherField = alertVC.textFields.lastObject;
                NSLog(@"input:%@ and %@",textField.text,anotherField.text);
            } another:^{
                UITextField *textField = alertVC.textFields.firstObject;
                UITextField *anotherField = alertVC.textFields.lastObject;
                NSLog(@"input:%@ and %@",textField.text,anotherField.text);
            } destructive:^{
                
            } textField:^(UITextField *textField) {
                textField.placeholder = kPlaceHolder;

            } anotherField:^(UITextField *textField) {
                textField.placeholder = kPlaceHolder;

            }];
        }
            break;
        default:
            break;
    }
}

@end
