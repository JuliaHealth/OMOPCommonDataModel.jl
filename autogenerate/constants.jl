@kwdef struct INFO
    version::String
    urls::Vector
    files::Vector
end

OMOPCDM_INFO = [
        INFO(
            version = "5.3", 
            urls = [],
            files = [
                "inst/csv/OMOP_CDMv5.3_Field_Level.csv", 
                "inst/csv/OMOP_CDMv5.3_Table_Level.csv"
            ]
        ),
        INFO(
            version = "5.4", 
            urls = ["https://github.com/OHDSI/CommonDataModel/archive/refs/tags/v5.4.0.zip", "https://github.com/OHDSI/CommonDataModel/archive/refs/tags/v5.4.1.zip", "https://github.com/OHDSI/CommonDataModel/archive/refs/tags/v5.4.2.zip"],
            files = [
                "inst/csv/OMOP_CDMv5.4_Field_Level.csv",
                "inst/csv/OMOP_CDMv5.4_Table_Level.csv"
            ]
        ),
        (
            version = "6.0", 
            urls = [],
            files = [
                "inst/csv/OMOP_CDMv6.0_Field_Level.csv",
                "inst/csv/OMOP_CDMv6.0_Table_Level.csv"
            ]
        )
    ]
