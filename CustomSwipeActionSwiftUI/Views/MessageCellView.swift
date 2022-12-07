//
//  MessageCellView.swift
//  CustomSwipeActionSwiftUI
//
//  Created by  Юлия Григорьева on 07.12.2022.
//

import SwiftUI

struct MessageCellView: View {
    @Binding var message: Message
    @Binding var messages: [Message]

    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(20)
                .padding(.trailing, 30)

            HStack {

                Spacer()
                Button {
                    withAnimation(.easeIn) {
                        deleteMessage()
                    }

                } label: {
                    Image(systemName: "trash")
                        .font(.title)
                        .foregroundColor(.red)
                        .frame(width: 25, height: 87)
                        .padding()
                        .background(Color.trashButtonColor.opacity(0.3))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            .padding(.bottom, 20)

            HStack {
                Image(message.image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                    .scaledToFit()
                    .padding(10)
                    .shadow(color: .black, radius: 5, x: 0, y: 0)
                VStack(alignment: .leading) {
                    Text(message.username)
                        .padding(3)
                    Text(message.messageText)
                        .font(Font.custom("Urbanist-Regular", size: 15))
                        .foregroundColor(Color.messageColor)
                        .padding(3)
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text(message.date)
                        .font(Font.custom("Urbanist-Regular", size: 15))
                        .foregroundColor(Color.timeColor)
                    HStack {
                        Image(systemName: "pin")
                        Text(message.newMessagesCount)
                            .foregroundColor(.black)
                            .frame(width: 25, height: 25, alignment: .center)
                            .background(Color.yellowColor)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                }
            }
            .padding(.top, 20)
            .padding(.bottom, 20)
            .background((message.offset < 0)  ? Color.gray.opacity(0.1) : Color.blueColor)
            .cornerRadius(10)
            .padding(.bottom, 20)

            .offset(x: message.offset)
            .gesture(DragGesture().onChanged(onChanged(value:)).onEnded(onEnd(value:)))
        }

        .listStyle(.plain)
    }

    func deleteMessage() {
        messages.removeAll { (message) -> Bool in
            return self.message.id == message.id
        }

    }

    func onChanged(value: DragGesture.Value) {
        if value.translation.width < 0 {
            if message.isSwiped {
                message.offset = value.translation.width
            }
        }

    }

    func onEnd(value: DragGesture.Value) {
        withAnimation(.easeOut) {
            if -value.translation.width >= 50 {
                message.offset = -70

            } else {
                message.offset = 0
            }
        }
    }
}
