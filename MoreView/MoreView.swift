//
//  MoreView.swift
//  AlDwaaNewApp
//
//  Created by ahmed hussien on 18/07/2023.
//

import SwiftUI

struct MoreView: View {
    let cartItems: [CartItem] = CartItem.allCases
    var body: some View {
        ZStack {
            Image("splash01")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                ForEach(cartItems) { item in
                    CartView(item: item)
                        .padding(.vertical,5)
                }
                HStack {
                    Spacer()
                    Image("logout")
                    AppButton(state: .constant(.normal), style: .plain) {
                        print("Sign out")
                    } builder: {
                        Text("Sign out")
                    }
                    Spacer()
                }
            }
        }
    }
}

enum CartItem: CaseIterable,Identifiable {
    case personalInfo
    case favorites
    case wallet
    case Orders
    case Dawaok
    case Appointment
    case health
    case Menstrual_cycle
    case Notifications
    
    var id: String {
        switch self {
        case .personalInfo:
            return "1"
        case .favorites:
            return "2"
        case .wallet:
            return "3"
        case .Dawaok:
            return "4"
        case .Orders:
            return "5"
        case .Appointment:
            return "6"
        case .health:
            return "7"
        case .Menstrual_cycle:
            return "8"
        case .Notifications:
            return "9"
        }
    }
    
    var image: String {
        switch self {
        case .personalInfo:
            return "login"
        case .favorites:
            return "like"
        case .wallet:
            return "wallet"
        case .Dawaok:
            return "categoriesMedicine"
        case .Orders:
            return "shopNew"
        case .Appointment:
            return "calender"
        case .health:
            return "healthService2"
        case .Menstrual_cycle:
            return "menstural"
        case .Notifications:
            return "notifications"
        }
    }
    
    var title: String {
        switch self {
        case .personalInfo:
            return "Personal info"
        case .favorites:
            return "My Favorites"
        case .wallet:
            return "My Wallet"
        case .Dawaok:
            return "Dawaok"
        case .Orders:
            return "My Orders"
        case .Appointment:
            return "My Appointment"
        case .health:
            return "My health"
        case .Menstrual_cycle:
            return "My Menstrual_cycle"
        case .Notifications:
            return "My Notifications"
        }
    }
    
    var description: String {
        switch self {
        case .personalInfo:
            return "Address, insurance, contact info"
        case .favorites:
            return "Saved products, services"
        case .wallet:
            return "Loyalty points, payment method"
        case .Dawaok:
            return "edication manager"
        case .Orders:
            return "Track your orders"
        case .Appointment:
            return "anage and track your bookings"
        case .health:
            return "Track your health"
        case .Menstrual_cycle:
            return "Track your cycle"
        case .Notifications:
            return "See your notification"
        }
    }
    
    static var allCases: [CartItem] {
        return [.personalInfo, .favorites, .wallet, .Dawaok, .Orders, .Appointment, .health, .Menstrual_cycle, .Notifications]
    }
    
    static var count: Int {
        return allCases.count
    }
}

struct MoreView_Previews: PreviewProvider {
    static var previews: some View {
        MoreView()
    }
}
