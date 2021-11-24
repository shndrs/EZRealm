//
//  DBDataSource.swift
//  EZRealm
//
//  Created by shndrs on 11/24/21.
//

import Foundation

public protocol DBDataSource: AnyObject {
    associatedtype Realmject
    func connect(actionType: CRUD,
                 item: Realmject,
                 newItem: Realmject?,
                 completionHandler: DBCallback?)
    func getItems() -> [Realmject]
    func getItem(with id: String) -> Realmject?
    func deleteItems()
}
