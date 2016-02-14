//
//  SchoolViewModel.swift
//  schoolFinder
//
//  Created by Jonathan Yu on 2/14/16.
//  Copyright © 2016 Jonathan Yu. All rights reserved.
//

import Foundation

class SchoolViewModel: NSObject {
    
    var NAME: String
    var SCHOOL_URL: String
    var ID: String
    var CITY: String
    
    init(school: Result) {
        NAME = "Unknown"
        SCHOOL_URL = "Unknown URL"
        ID = "unknown ID"
        CITY = "unknown City"
        super.init()
        
        setupWithResult(school)
    }
    
    class func createViewModels(schools: [Result]) -> [SchoolViewModel] {
        var viewmodels = [SchoolViewModel]()
        for school in schools {
            viewmodels.append(SchoolViewModel(school: school))
        }
        
        return viewmodels
    }
    
    func setupWithResult(school: Result) {
        if school.NAME != nil {
            NAME = school.NAME!
        }
        
        if school.SCHOOL_URL != nil {
            SCHOOL_URL = school.SCHOOL_URL!
        }
        
        if school.CITY != nil {
            CITY = school.CITY!
        }
    }
    
}