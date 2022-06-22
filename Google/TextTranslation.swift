//
//  TextTranslation.swift
//  Google
//
//  Created by Ruslan on 03/06/22.
//

import UIKit

enum Text {
    static var me = Bundle.main.localizedString(forKey: "ME.main", value: "", table: "Localizable")
    static var driverButton = Bundle.main.localizedString(forKey: "Driver.button", value: "", table: "Localizable")
    static var passangerButton = Bundle.main.localizedString(forKey: "Passanger.button", value: "", table: "Localizable")
    
    /// LogInViewController
    
    static var authorizationLabel = Bundle.main.localizedString(forKey: "Authorization.label", value: "", table: "Localizable")
    static var phoneNumberPlaceHolder = Bundle.main.localizedString(forKey: "PhoneNumber.placeholder", value: "", table: "Localizable")
    static var passwordPlaceHolder = Bundle.main.localizedString(forKey: "Password.placeholder", value: "", table: "Localizable")
    static var logInButton = Bundle.main.localizedString(forKey: "LogIn.button", value: "", table: "Localizable")
    static var forgotPasswordLabel = Bundle.main.localizedString(forKey: "ForgotPassword.label", value: "", table: "Localizable")
    static var registrationButtonLabel = Bundle.main.localizedString(forKey: "Registration.button", value: "", table: "Localizable")
    static var alertTitle = Bundle.main.localizedString(forKey: "Alert.title", value: "", table: "Localizable")
    static var alertMessage = Bundle.main.localizedString(forKey: "Alert.message", value: "", table: "Localizable")
    static var noPhoneNumber = Bundle.main.localizedString(forKey: "Alert.noNumber", value: "", table: "Localizable")
    static var noPassword = Bundle.main.localizedString(forKey: "Alert.noPassword", value: "", table: "Localizable")
    static var noEnoughNumbers = Bundle.main.localizedString(forKey: "amountOfNumbersInNumbersField.placeholder", value: "", table: "Localizable")
    static var noSecurePassword = Bundle.main.localizedString(forKey: "amountOfPasswordCharacters", value: "", table: "Localizable")
    static var registrationLabel = Bundle.main.localizedString(forKey: "Registration.label", value: "", table: "Localizable")
    static var nameTextPlaceHolder = Bundle.main.localizedString(forKey: "Name.label.placeHolder", value: "", table: "Localizable")
    static var birthTextPlaceHolder = Bundle.main.localizedString(forKey: "DateOfBirth.label.placeHolder", value: "", table: "Localizable")
    static var phoneNumberTextPlaceHolder = Bundle.main.localizedString(forKey: "PhoneNumber.label.placeHolder", value: "", table: "Localizable")
    static var adressTextPlaceHolder = Bundle.main.localizedString(forKey: "Adress.label.placeHolder", value: "", table: "Localizable")
    static var passwordTextPlaceHolder = Bundle.main.localizedString(forKey: "Password.label.placeHolder", value: "", table: "Localizable")
    static var repeatPasswordTextPlaceHolder = Bundle.main.localizedString(forKey: "RepeatPassword.label.placeholder", value: "", table: "Localizable")
    static var nextButton = Bundle.main.localizedString(forKey: "NextButton.label", value: "", table: "Localizable")
    static var noCharactersAllowed = Bundle.main.localizedString(forKey: "Alert.CharacterFound", value: "", table: "Localizable")
    static var noCharactersAllowedForPhone = Bundle.main.localizedString(forKey: "Alert.CharacterFoundForNumber", value: "", table: "Localizable")
    static var differentPasswords = Bundle.main.localizedString(forKey: "Alert.diffrentPasswords", value: "", table: "Localizable")
    static var emptyFields = Bundle.main.localizedString(forKey: "Alert.emptyField", value: "", table: "Localizable")
    static var carName = Bundle.main.localizedString(forKey: "CarName.label", value: "", table: "Localizable")
    static var carTypeLabelPlaceholder = Bundle.main.localizedString(forKey: "CarType.label.placeholder", value: "", table: "Localizable")
    static var carNumberLabelPlaceholder = Bundle.main.localizedString(forKey: "CarNumber.label.placeholder", value: "", table: "Localizable")
    static var confirmationTitle = Bundle.main.localizedString(forKey: "ConfirmationTitile", value: "", table: "Localizable")
    static var information = Bundle.main.localizedString(forKey: "Information", value: "", table: "Localizable")
    static var confirationTextFieldNumber = Bundle.main.localizedString(forKey: "ConfirmationNumberPlaceholder", value: "", table: "Localizable")
    static var confirmationButtonText = Bundle.main.localizedString(forKey: "ConfirmationButton", value: "", table: "Localizable")
    static var wrongConfirmationNum = Bundle.main.localizedString(forKey: "WrongConfirmationNumberEntered", value: "", table: "Localizable")
    static var tryAgain = Bundle.main.localizedString(forKey: "TryAgainAfterButtonPressed", value: "", table: "Localizable")
    static var addImgText = Bundle.main.localizedString(forKey: "AddImg.title", value: "", table: "Localizable")
    static var endOfRegistrationButton = Bundle.main.localizedString(forKey: "EndOfRegistration.ButtonText", value: "", table: "Localizable")
}
