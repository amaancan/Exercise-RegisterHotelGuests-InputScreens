//
//  RoomTypeStruct.swift
//  RegisterHotelGuests
//
//  Created by Amaan on 2017-12-19.
//  Copyright © 2017 Amaan Khan. All rights reserved.
//

import UIKit
//TODO: - rename this file to more generic name.
struct Registration {
    var firstName: String
    var lastName: String
    var emailAddress: String
    
    var checkInDate: Date
    var checkOutDate: Date
    var numberOfAdults: Int
    var numberOfChildren: Int
    
    var roomType: RoomType
    var wifi: Bool
}

//TODO: - QUESTION: Why can't I put this in a seperate file??? Isn't it common to keep structs in diff files for readability and organization? If other VCs can call RoomType from diff files, why can't Registerion struct refer to RoomType struct from a seperate file?
struct RoomType: Equatable {
    var id: Int
    var name: String
    var shortName: String
    var price: Int
    
    static var all: [RoomType] { //TODO: - QUESTION - Why static? Why computed var???
        return [RoomType(id: 0, name: "Two Queens", shortName: "2Q", price: 179),
                RoomType(id: 1, name: "One King", shortName: "K", price: 209),
                RoomType(id: 2, name: "Penthouse Suite", shortName: "PHS", price: 309)]
    }
}

//Equatable Protocol Implementation for RoomType
func ==(lhs: RoomType, rhs: RoomType) -> Bool {
    return lhs.id == rhs.id
}
