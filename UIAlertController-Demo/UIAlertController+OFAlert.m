//
//  UIAlertController+OFAlert.m
//  UIAlertController-Demo
//
//  Created by Ricky Lin on 16/8/25.
//  Copyright © 2016年 OneFish. All rights reserved.
//

#import "UIAlertController+OFAlert.h"

@implementation UIAlertController (OFAlert)

+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                      cancel:(ActionBlock)cancel
{
    return [self alert:vc
                 style:style
                 title:title
               message:mesaage
           cancelTitle:cancelTitle
            otherTitle:nil
                cancel:cancel
                 other:nil];
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                  otherTitle:(NSString *)otherTitle
                       other:(ActionBlock)other
{
    return [self alert:vc
                 style:style
                 title:title
               message:mesaage
           cancelTitle:nil
            otherTitle:otherTitle
                cancel:nil
                 other:other];
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
{
    
    return [self alert:vc
                 style:style
                 title:title
               message:mesaage
           cancelTitle:cancelTitle
            otherTitle:otherTitle
          anotherTitle:nil
                cancel:cancel
                 other:other
               another:nil];
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                anotherTitle:(NSString *)anotherTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                     another:(ActionBlock)another
{
    return [self alert:vc
                 style:style
                 title:title
               message:mesaage
           cancelTitle:cancelTitle
            otherTitle:otherTitle
          anotherTitle:anotherTitle
      destructiveTitle:nil
                cancel:cancel
                 other:other
               another:another
           destructive:nil];
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                  otherTitle:(NSString *)otherTitle
            destructiveTitle:(NSString *)destructiveTitle
                       other:(ActionBlock)other
                 destructive:(ActionBlock)destructive
{
    return [self alert:vc
                 style:style
                 title:title
               message:mesaage
           cancelTitle:nil
            otherTitle:otherTitle
      destructiveTitle:destructiveTitle
                cancel:nil
                 other:other
           destructive:destructive];
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
            destructiveTitle:(NSString *)destructiveTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                 destructive:(ActionBlock)destructive
{
    return [self alert:vc
                 style:style
                 title:title
               message:mesaage
           cancelTitle:cancelTitle
            otherTitle:otherTitle
          anotherTitle:nil
      destructiveTitle:destructiveTitle
                cancel:cancel
                 other:other
               another:nil
           destructive:destructive
             textField:nil
          anotherField:nil];
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                   textField:(TextFieldBlock)textField
{
    return [self alert:vc
                 title:title
               message:mesaage
           cancelTitle:cancelTitle
            otherTitle:otherTitle
                cancel:cancel
                 other:other
             textField:textField
          anotherField:nil];
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                   textField:(TextFieldBlock)textField
                anotherField:(TextFieldBlock)anotherField
{
    return [self alert:vc
                 title:title
               message:mesaage
           cancelTitle:cancelTitle
            otherTitle:otherTitle
          anotherTitle:nil
                cancel:cancel
                 other:other
               another:nil
             textField:textField
          anotherField:anotherField];
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                anotherTitle:(NSString *)anotherTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                     another:(ActionBlock)another
                   textField:(TextFieldBlock)textField
                anotherField:(TextFieldBlock)anotherField
{
    
    return [self alert:vc
                 style:UIAlertControllerStyleAlert
                 title:title
               message:mesaage
           cancelTitle:cancelTitle
            otherTitle:otherTitle
          anotherTitle:anotherTitle
      destructiveTitle:nil
                cancel:cancel
                 other:other
               another:another
           destructive:nil
             textField:textField
          anotherField:anotherField];
    
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                anotherTitle:(NSString *)anotherTitle
            destructiveTitle:(NSString *)destructiveTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                     another:(ActionBlock)another
                 destructive:(ActionBlock)destructive
{
    return [self alert:vc
                 style:style
                 title:title
               message:mesaage
           cancelTitle:cancelTitle
            otherTitle:otherTitle
          anotherTitle:anotherTitle
      destructiveTitle:destructiveTitle
                cancel:cancel
                 other:other
               another:another
           destructive:destructive
             textField:nil
          anotherField:nil];
}

+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                anotherTitle:(NSString *)anotherTitle
            destructiveTitle:(NSString *)destructiveTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                     another:(ActionBlock)another
                 destructive:(ActionBlock)destructive
                   textField:(TextFieldBlock)textField
                anotherField:(TextFieldBlock)anotherField
{
    if (textField || anotherField) {
        
        style = UIAlertControllerStyleAlert;
    }
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:mesaage preferredStyle:style];
    
    if (cancelTitle) {
        
        UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:cancelTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            
            if (cancel) {
                cancel();
            }
        }];
        [alertVC addAction:cancelAction];
    }
    
    if (otherTitle) {
        
        UIAlertAction *otherAction = [UIAlertAction actionWithTitle:otherTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            if (other) {
                other();
            }
        }];
        [alertVC addAction:otherAction];
    }
    
    if (anotherTitle) {
        
        UIAlertAction *anotherAction = [UIAlertAction actionWithTitle:anotherTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
            if (another) {
                another();
            }
        }];
        [alertVC addAction:anotherAction];
    }
    
    if (destructiveTitle) {
        
        UIAlertAction *destructiveAction = [UIAlertAction actionWithTitle:destructiveTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
            
            if (destructive) {
                destructive();
            }
        }];
        [alertVC addAction:destructiveAction];
    }
    
    if (textField) {
        [alertVC addTextFieldWithConfigurationHandler:textField];
    }
    
    if (anotherField) {
        [alertVC addTextFieldWithConfigurationHandler:anotherField];
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        
        [alertVC.view setNeedsLayout];
        [vc presentViewController:alertVC animated:YES completion:nil];
    });
    
    return alertVC;
}

@end
