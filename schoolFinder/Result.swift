//
//  Result.swift
//  schoolFinder
//
//  Created by Jonathan Yu on 2/12/16.
//  Copyright © 2016 Jonathan Yu. All rights reserved.
//

import Foundation
import ObjectMapper

class Result: NSObject, Mappable {
    
    var ID: String = ""
    var NAME: String = ""
    var CITY: String = ""
    var STATE: String = ""
    var ZIP_CODE: String = ""
    var SCHOOL_URL: String = ""
    var CARNEGIE_BASIC: String = ""
    var CARNEGIE_SIZE_SETTING: String = ""
    var OWNERSHIP: String = ""
    var LOCALE: String = ""
    var LOCATION_LON: String = ""
    var LOCATION_LAT: String = ""
    var REGION_ID: String = ""
    var RELIGIOUS: String = ""
    var OPERATING: String = ""
    var SIZE: String = ""
    var PARENTS_EDUCATION_LEVEL: String = ""
    var SHARE_FIRSTGENERATION: String = ""
    var ONLINE_ONLY: String = ""
    var WOMEN_ONLY: String = ""
    var MEN_ONLY: String = ""
    var MINORITY_SERVING: String = ""
    var PREDOMINANT_DEGREE: String = ""
    var HIGHEST_DEGREE: String = ""
    var UNDER_INVESTIGATION: String = ""
    var NET_PRICE: String = ""
    var NET_PRICE_BY_INCOME: String = ""
    var COMPLETION_RATE: String = ""
    var RETENTION_RATE: String = ""
    var REPAYMENT_RATE: String = ""
    var AVERAGE_TOTAL_DEBT: String = ""
    var MONTHLY_LOAN_PAYMENT: String = ""
    var AID_PERCENTAGE: String = ""
    var PELL_PERCENTAGE: String = ""
    var MEDIAN_EARNINGS: String = ""
    var EARNINGS_GT_25K: String = ""
    var PROGRAM_PERCENTAGE: String = ""
    var PROGRAM_OFFERED: String = ""
    var DEGREE_OFFERED: String = ""
    var PART_TIME_SHARE: String = ""
    var FEMALE_SHARE: String = ""
    var RACE_ETHNICITY: String = ""
    var AGE_ENTRY: String = ""
    var ACT_25TH_PCTILE: String = ""
    var ACT_75TH_PCTILE: String = ""
    var ACT_MIDPOINT: String = ""
    var SAT_CUMULATIVE_AVERAGE: String = ""
    var SAT_READING_25TH_PCTILE: String = ""
    var SAT_READING_75TH_PCTILE: String = ""
    var SAT_READING_MIDPOINT: String = ""
    var SAT_MATH_25TH_PCTILE: String = ""
    var SAT_MATH_75TH_PCTILE: String = ""
    var SAT_MATH_MIDPOINT: String = ""
    var SAT_WRITING_25TH_PCTILE: String = ""
    var SAT_WRITING_75TH_PCTILE: String = ""
    var SAT_WRITING_MIDPOINT: String = ""
    var NET_PRICE_CALC_URL: String = ""
    
    required init?(_ map: Map) {
        
    }
    
    func mapping(map: Map) {
        ID <- (map["id"], FieldTransform())
        NAME <- map["school.name"]
        CITY <- map["school.city"]
        STATE <- map["school.state"]
        ZIP_CODE <- (map["school.zip"], FieldTransform())
        SCHOOL_URL <- map["school.school_url"]
        CARNEGIE_BASIC <- (map["school.carnegie_basic"], FieldTransform())
        CARNEGIE_SIZE_SETTING <- (map["school.carnegie_size_setting"], SizeReligionTransform())
        OWNERSHIP <- (map["school.ownership"], FieldTransform())
        LOCALE <- (map["school.locale"], RegionTransform())
        LOCATION_LAT <- (map["school.lat"], FieldTransform())
        LOCATION_LON <- (map["school.lon"], FieldTransform())
        REGION_ID <- (map["school.region_id"], RegionTransform())
        RELIGIOUS <- (map["school.religious_affiliation"], SizeReligionTransform())
        OPERATING <- (map["school.operating"], YesNoTransform())
        SIZE <- (map["2013.student.size"], FieldTransform())
        PARENTS_EDUCATION_LEVEL <- (map["2013.student.parents_education_level"], FieldTransform())
        SHARE_FIRSTGENERATION <- (map["2013.student.share_firstgeneration"], PercentTransform())
        ONLINE_ONLY <- (map["school.online_only"], YesNoTransform())
        WOMEN_ONLY <- (map["school.women_only"], YesNoTransform())
        MEN_ONLY <- (map["school.men_only"], YesNoTransform())
        MINORITY_SERVING <- (map["school.minority_serving"], YesNoTransform())
        PREDOMINANT_DEGREE <- (map["school.degrees_awarded.predominant"], DegreeTransform())
        HIGHEST_DEGREE <- (map["school.degrees_awarded.highest"], DegreeTransform())
        UNDER_INVESTIGATION <- (map["school.under_investigation"], YesNoTransform())
        
        
        NET_PRICE <- (map["2013.cost.avg_net_price.overall"], DollarTransform())
        NET_PRICE_BY_INCOME <- (map["2013.cost.net_price"], DollarTransform())
        COMPLETION_RATE <- (map["2013.completion.rate_suppressed.overall"], PercentTransform())
        RETENTION_RATE <- (map["2013.student.retention_rate"], PercentTransform())
        REPAYMENT_RATE <- (map["2013.repayment.3_yr_repayment_suppressed.overall"], PercentTransform())
        AVERAGE_TOTAL_DEBT <- (map["2013.aid.median_debt_suppressed.completers.overall"], DollarTransform())
        MONTHLY_LOAN_PAYMENT <- (map["2013.aid.median_debt_suppressed.completers.monthly_payments"], DollarTransform())
        AID_PERCENTAGE <- (map["2013.aid.federal_loan_rate"], PercentTransform())
        PELL_PERCENTAGE <- (map["2013.aid.pell_grant_rate"], PercentTransform())
        MEDIAN_EARNINGS <- (map["2011.earnings.10_yrs_after_entry.median"], DollarTransform())
        EARNINGS_GT_25K <- (map["2011.earnings.6_yrs_after_entry.percent_greater_than_25000"], PercentTransform())
        PROGRAM_PERCENTAGE <- (map["2013.academics.program_percentage"], DollarTransform())
        PROGRAM_OFFERED <- (map["2013.academics.program"], FieldTransform())
        DEGREE_OFFERED <- (map["2013.academics.program_available"], FieldTransform())
        PART_TIME_SHARE <- (map["2013.student.part_time_share"], PercentTransform())
        FEMALE_SHARE <- (map["2013.student.demographics.female_share"], PercentTransform())
        RACE_ETHNICITY <- (map["2013.student.demographics.race_ethnicity"], FieldTransform())
        AGE_ENTRY <- (map["2013.student.demographics.age_entry"], FieldTransform())
        ACT_25TH_PCTILE <- (map["2013.admissions.act_scores.25th_percentile.cumulative"], FieldTransform())
        ACT_75TH_PCTILE <- (map["2013.admissions.act_scores.75th_percentile.cumulative"], FieldTransform())
        ACT_MIDPOINT <- (map["2013.admissions.act_scores.midpoint.cumulative"], FieldTransform())
        SAT_CUMULATIVE_AVERAGE <- (map["2013.admissions.sat_scores.average.overall"], FieldTransform())
        SAT_READING_25TH_PCTILE <- (map["2013.admissions.sat_scores.25th_percentile.critical_reading"], FieldTransform())
        SAT_READING_75TH_PCTILE <- (map["2013.admissions.sat_scores.75th_percentile.critical_reading"], FieldTransform())
        SAT_READING_MIDPOINT <- (map["2013.admissions.sat_scores.midpoint.critical_reading"], FieldTransform())
        SAT_MATH_25TH_PCTILE <- (map["2013.admissions.sat_scores.25th_percentile.math"], FieldTransform())
        SAT_MATH_75TH_PCTILE <- (map["2013.admissions.sat_scores.75th_percentile.math"], FieldTransform())
        SAT_MATH_MIDPOINT <- (map["2013.admissions.sat_scores.midpoint.math"], FieldTransform())
        SAT_WRITING_25TH_PCTILE <- (map["2013.admissions.sat_scores.25th_percentile.writing"], FieldTransform())
        SAT_WRITING_75TH_PCTILE <- (map["2013.admissions.sat_scores.75th_percentile.writing"], FieldTransform())
        SAT_WRITING_MIDPOINT <- (map["2013.admissions.sat_scores.midpoint.writing"], FieldTransform())
        NET_PRICE_CALC_URL <- (map["school.price_calculator_url"], FieldTransform())
    }
    
    func print_value(label: String) -> String {
        return self.valueForKey(label) != nil ? self.valueForKey(label) as! String : "unknown"
    }
    
}