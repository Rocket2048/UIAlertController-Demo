//
//  UIAlertController+OFAlert.h
//  UIAlertController-Demo
//
//  Created by Ricky Lin on 16/8/25.
//  Copyright © 2016年 OneFish. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^ActionBlock)();
typedef void (^TextFieldBlock)(UITextField *textField);

@interface UIAlertController (OFAlert)

/**
 *  only cancel
 *
 *  @param vc          <#vc description#>
 *  @param style       <#style description#>
 *  @param title       <#title description#>
 *  @param mesaage     <#mesaage description#>
 *  @param cancelTitle <#cancelTitle description#>
 *  @param cancel      <#cancel description#>
 *
 *  @return <#return value description#>
 */
+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                      cancel:(ActionBlock)cancel;

/**
 *  only btn
 *
 *  @param vc         <#vc description#>
 *  @param style      <#style description#>
 *  @param title      <#title description#>
 *  @param mesaage    <#mesaage description#>
 *  @param otherTitle <#otherTitle description#>
 *  @param other      <#other description#>
 *
 *  @return <#return value description#>
 */
+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                  otherTitle:(NSString *)otherTitle
                       other:(ActionBlock)other;

/**
 *  cancel + btn
 *
 *  @param vc          <#vc description#>
 *  @param style       <#style description#>
 *  @param title       <#title description#>
 *  @param mesaage     <#mesaage description#>
 *  @param cancelTitle <#cancelTitle description#>
 *  @param otherTitle  <#otherTitle description#>
 *  @param cancel      <#cancel description#>
 *  @param other       <#other description#>
 *
 *  @return <#return value description#>
 */
+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other;

/**
 *  cancel + 2*btn
 *
 *  @param vc           <#vc description#>
 *  @param style        <#style description#>
 *  @param title        <#title description#>
 *  @param mesaage      <#mesaage description#>
 *  @param cancelTitle  <#cancelTitle description#>
 *  @param otherTitle   <#otherTitle description#>
 *  @param anotherTitle <#anotherTitle description#>
 *  @param cancel       <#cancel description#>
 *  @param other        <#other description#>
 *  @param another      <#another description#>
 *
 *  @return <#return value description#>
 */
+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                anotherTitle:(NSString *)anotherTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                     another:(ActionBlock)another;

/**
 *  btn + destructive
 *
 *  @param vc               <#vc description#>
 *  @param style            <#style description#>
 *  @param title            <#title description#>
 *  @param mesaage          <#mesaage description#>
 *  @param otherTitle       <#otherTitle description#>
 *  @param destructiveTitle <#destructiveTitle description#>
 *  @param other            <#other description#>
 *  @param destructive      <#destructive description#>
 *
 *  @return <#return value description#>
 */
+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                  otherTitle:(NSString *)otherTitle
            destructiveTitle:(NSString *)destructiveTitle
                       other:(ActionBlock)other
                 destructive:(ActionBlock)destructive;

/**
 *  cancel + btn + destructive
 *
 *  @param vc               <#vc description#>
 *  @param style            <#style description#>
 *  @param title            <#title description#>
 *  @param mesaage          <#mesaage description#>
 *  @param cancelTitle      <#cancelTitle description#>
 *  @param otherTitle       <#otherTitle description#>
 *  @param destructiveTitle <#destructiveTitle description#>
 *  @param cancel           <#cancel description#>
 *  @param other            <#other description#>
 *  @param destructive      <#destructive description#>
 *
 *  @return <#return value description#>
 */
+ (UIAlertController *)alert:(UIViewController *)vc
                       style:(UIAlertControllerStyle)style
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
            destructiveTitle:(NSString *)destructiveTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                 destructive:(ActionBlock)destructive;

/**
 *  cancel + btn + textField
 *
 *  @param vc          <#vc description#>
 *  @param title       <#title description#>
 *  @param mesaage     <#mesaage description#>
 *  @param cancelTitle <#cancelTitle description#>
 *  @param otherTitle  <#otherTitle description#>
 *  @param cancel      <#cancel description#>
 *  @param other       <#other description#>
 *  @param textField   <#textField description#>
 *
 *  @return <#return value description#>
 */
+ (UIAlertController *)alert:(UIViewController *)vc
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                   textField:(TextFieldBlock)textField;

/**
 *  cancel + btn + 2*textField
 *
 *  @param vc           <#vc description#>
 *  @param title        <#title description#>
 *  @param mesaage      <#mesaage description#>
 *  @param cancelTitle  <#cancelTitle description#>
 *  @param otherTitle   <#otherTitle description#>
 *  @param cancel       <#cancel description#>
 *  @param other        <#other description#>
 *  @param textField    <#textField description#>
 *  @param anotherField <#anotherField description#>
 *
 *  @return <#return value description#>
 */
+ (UIAlertController *)alert:(UIViewController *)vc
                       title:(NSString *)title
                     message:(NSString *)mesaage
                 cancelTitle:(NSString *)cancelTitle
                  otherTitle:(NSString *)otherTitle
                      cancel:(ActionBlock)cancel
                       other:(ActionBlock)other
                   textField:(TextFieldBlock)textField
                anotherField:(TextFieldBlock)anotherField;

/**
 *  cancel + 2*btn + 2*textField
 *
 *  @param vc           <#vc description#>
 *  @param title        <#title description#>
 *  @param mesaage      <#mesaage description#>
 *  @param cancelTitle  <#cancelTitle description#>
 *  @param otherTitle   <#otherTitle description#>
 *  @param anotherTitle <#anotherTitle description#>
 *  @param cancel       <#cancel description#>
 *  @param other        <#other description#>
 *  @param another      <#another description#>
 *  @param textField    <#textField description#>
 *  @param anotherField <#anotherField description#>
 *
 *  @return <#return value description#>
 */
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
                anotherField:(TextFieldBlock)anotherField;

/**
 *  cancel +2*btn + destructive
 *
 *  @param vc               <#vc description#>
 *  @param style            <#style description#>
 *  @param title            <#title description#>
 *  @param mesaage          <#mesaage description#>
 *  @param cancelTitle      <#cancelTitle description#>
 *  @param otherTitle       <#otherTitle description#>
 *  @param anotherTitle     <#anotherTitle description#>
 *  @param destructiveTitle <#destructiveTitle description#>
 *  @param cancel           <#cancel description#>
 *  @param other            <#other description#>
 *  @param another          <#another description#>
 *  @param destructive      <#destructive description#>
 *
 *  @return <#return value description#>
 */
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
                 destructive:(ActionBlock)destructive;

/**
 *  cancel + 2*btn + 2*textField + destructive
 *
 *  @param vc               <#vc description#>
 *  @param style            <#style description#>
 *  @param title            <#title description#>
 *  @param mesaage          <#mesaage description#>
 *  @param cancelTitle      <#cancelTitle description#>
 *  @param otherTitle       <#otherTitle description#>
 *  @param anotherTitle     <#anotherTitle description#>
 *  @param destructiveTitle <#destructiveTitle description#>
 *  @param cancel           <#cancel description#>
 *  @param other            <#other description#>
 *  @param another          <#another description#>
 *  @param destructive      <#destructive description#>
 *  @param textField        <#textField description#>
 *  @param anotherField     <#anotherField description#>
 *
 *  @return <#return value description#>
 */
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
                anotherField:(TextFieldBlock)anotherField;
@end
