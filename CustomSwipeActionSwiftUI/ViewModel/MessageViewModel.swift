//
//  MessageViewModel.swift
//  CustomSwipeActionSwiftUI
//
//  Created by  Юлия Григорьева on 07.12.2022.
//
import SwiftUI

class MessageViewModel: ObservableObject {

    @Published var messages = [
    Message(image: "palms", username: "Beach Wear", messageText: "Discounts: 15% off", date: "21:00", newMessagesCount: "1", isSwiped: false),
    Message(image: "mountain", username: "Sky Shop", messageText: "Special offer for you", date: "20:31", newMessagesCount: "2", isSwiped: false),
    Message(image: "restaurant", username: "Kabbas Restaurant", messageText: "New menu!", date: "18:05", newMessagesCount: "5", isSwiped: false),
    Message(image: "clothes", username: "Best Clothes", messageText: "New collection!", date: "17:10", newMessagesCount: "1", isSwiped: false),
    Message(image: "car", username: "VIP cars", messageText: "Test drive on 01.01", date: "16:45", newMessagesCount: "6", isSwiped: false),
    Message(image: "royal", username: "Royal Hotel", messageText: "See you soon!", date: "13:00", newMessagesCount: "3", isSwiped: false),
    Message(image: "cosmos", username: "Unique", messageText: "Congratulations!", date: "11:20", newMessagesCount: "1", isSwiped: false),
    Message(image: "heart", username: "Cinema Club", messageText: "Watch and relax", date: "11:05", newMessagesCount: "5", isSwiped: false),
    Message(image: "family", username: "Family Shopping", messageText: "Total sale!", date: "10:03", newMessagesCount: "1", isSwiped: false),
    Message(image: "dress", username: "Lady's Shop", messageText: "New dresses just for you", date: "13:00", newMessagesCount: "1", isSwiped: false)
    ]
}

