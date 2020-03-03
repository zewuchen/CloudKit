//
//  Cloud.swift
//  LearningCloudKit
//
//  Created by Zewu Chen on 03/03/20.
//  Copyright © 2020 Zewu Chen. All rights reserved.
//

import Foundation
import CloudKit

enum Record {
    case aluno
    
    var record: String {
        switch self {
            case .aluno: return "Aluno"
        }
    }
}

class Cloud {
    let container: CKContainer
    let database: CKDatabase
    
    // SELECT * FROM
    let predicate: NSPredicate
    
    private init() {
        self.container = CKContainer.default()
        self.database = self.container.privateCloudDatabase
        self.predicate = NSPredicate(value: true)
    }
    static let shared = Cloud()
    
    func getAll(recordType: Record) {
        let query = CKQuery.init(recordType: recordType.record, predicate: predicate)
        self.database.perform(query, inZoneWith: nil) { (records, error) in
            print(records)
            print(error)
        }
    }
    
}
