//
//  User.swift
//  To-Do-List
//
//  Created by Begüm Arıcı on 16.02.2025.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}


