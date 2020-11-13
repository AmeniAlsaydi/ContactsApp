//
//  ContactsAppTests.swift
//  ContactsAppTests
//
//  Created by Amy Alsaydi on 11/13/20.
//

import XCTest
@testable import ContactsApp

class ContactsAppTests: XCTestCase {
    
    // Arrange Act Asset

    func testContacts() {
        // Arrange
        let expected = 20
        // Act
        let contacts = Contact.getContacts()
        // Assert
        XCTAssertEqual(expected, contacts.count)
    }
}
