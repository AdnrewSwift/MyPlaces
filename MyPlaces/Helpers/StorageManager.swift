//
//  StorageManager.swift
//  MyPlaces
//
//  Created by Андрей on 26.01.2021.
//  Copyright © 2021 Андрей. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        
        try! realm.write {
            realm.delete(place)
        }
    }
}
