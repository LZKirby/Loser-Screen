//
//  LoserScreenApp.swift
//  LoserScreen
//
//  Created by leiland kirby on 10/10/23.
//

import SwiftUI
import SwiftData
import UniformTypeIdentifiers

@main
struct LoserScreenApp: App {
    var body: some Scene {
        DocumentGroup(editing: .itemDocument, migrationPlan: LoserScreenMigrationPlan.self) {
            ContentView()
        }
    }
}

extension UTType {
    static var itemDocument: UTType {
        UTType(importedAs: "com.example.item-document")
    }
}

struct LoserScreenMigrationPlan: SchemaMigrationPlan {
    static var schemas: [VersionedSchema.Type] = [
        LoserScreenVersionedSchema.self,
    ]

    static var stages: [MigrationStage] = [
        // Stages of migration between VersionedSchema, if required.
    ]
}

struct LoserScreenVersionedSchema: VersionedSchema {
    static var versionIdentifier = Schema.Version(1, 0, 0)

    static var models: [any PersistentModel.Type] = [
        Item.self,
    ]
}
