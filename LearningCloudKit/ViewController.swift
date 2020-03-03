//
//  ViewController.swift
//  LearningCloudKit
//
//  Created by Zewu Chen on 03/03/20.
//  Copyright © 2020 Zewu Chen. All rights reserved.
//

import UIKit
//import CloudKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let container = CKContainer.init(identifier: "iCloud.ZewuTest")
//        let db = container.privateCloudDatabase
//
//        // SELECT * FROM
//        let predicate = NSPredicate(value: true)
//        let query = CKQuery.init(recordType: "Aluno", predicate: predicate)
//
//        db.perform(query, inZoneWith: nil) { (records, error) in
//            print(records)
//            print(error)
//        }
        
        Cloud.shared.getAll(recordType: .aluno)
    }


}

