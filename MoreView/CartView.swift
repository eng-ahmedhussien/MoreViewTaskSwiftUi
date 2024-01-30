//
//  CartView.swift
//
//  Created by ahmed hussien on 18/07/2023.
//

import SwiftUI

struct CartView: View {
//    var item = CartModel(id: "1", image: "login", title: "personal info", discription: "Address, insurance, contact info")
    var item = CartItem.personalInfo
    
    var body: some View {
        HStack(alignment:.top,spacing: 35){
                Image(item.image)
                .padding(.leading,30)
                .frame(width: 20, height: 20)
                
                VStack(alignment: .leading,spacing: 10){
                    Text(item.title)
                        .tint(Color.theme.primary)
                    
                    Text(item.description)
                        .tint(Color.theme.txtPlaceholder)
                }
            Spacer()
            }
        .frame(width: UIScreen.main.bounds.width/1.1, height: 100)
        .background(Color.theme.bgWhite)
        .cornerRadius(25)
        .shadow(radius: 5)
        
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
//        CartView(item: CartModel(id: "1", image: "login", title: "personal info", discription: "Address, insurance, contact info"))

    }
}
