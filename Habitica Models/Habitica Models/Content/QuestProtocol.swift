//
//  QuestProtocol.swift
//  Habitica Models
//
//  Created by Phillip Thelen on 12.03.18.
//  Copyright © 2018 HabitRPG Inc. All rights reserved.
//

import Foundation

@objc
public protocol QuestProtocol: ItemProtocol {
    var completion: String? { get set }
    var category: String? { get set }
    var boss: QuestBossProtocol? { get set }
    var collect: [QuestCollectProtocol]? { get set }
    var drop: QuestDropProtocol? { get set }
}

public extension QuestProtocol {
    public var imageName: String {
        return "inventory_quest_scroll_\(key ?? "")"
    }
    
    public var isBossQuest: Bool {
        return (boss?.health ?? 0) > 0
    }
    
    public var isCollectionQuest: Bool {
        return (collect?.count ?? 0) > 0
    }
}
