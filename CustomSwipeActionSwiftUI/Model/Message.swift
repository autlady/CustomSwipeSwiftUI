//
//  Message.swift
//  CustomSwipeActionSwiftUI
//
//  Created by  Юлия Григорьева on 07.12.2022.
//

import SwiftUI

struct Message: Identifiable {
        var id = UUID().uuidString
        var image: String
        var username: String
        var messageText: String
        var date: String
        var newMessagesCount: String
        var offset: CGFloat = 0
        var isSwiped: Bool
    }
