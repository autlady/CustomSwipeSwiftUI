//
//  MessageView.swift
//  CustomSwipeActionSwiftUI
//
//  Created by  Юлия Григорьева on 07.12.2022.
//

import SwiftUI

struct MessageView: View {
    @StateObject var messageData = MessageViewModel()

    var body: some View {
        //        List {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 0) {
                ForEach(messageData.messages) { message in
                    MessageCellView(message: $messageData.messages[getIndex(message: message)], messages: $messageData.messages)

                }
            }
        }

    }
    func getIndex(message: Message) -> Int {
        return messageData.messages.firstIndex { (message1) -> Bool in
            return message.id == message1.id
        } ?? 0
    }
}
