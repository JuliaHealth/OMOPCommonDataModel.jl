import Dates
import DocStringExtensions

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Person <: OmopType
    person_id::Int
    gender_concept_id::Int
    year_of_birth::Int
    month_of_birth::Union{Missing, Int} = missing
    day_of_birth::Union{Missing, Int} = missing
    birth_datetime::Union{Missing, Dates.DateTime} = missing
    death_datetime::Union{Missing, Dates.DateTime} = missing
    race_concept_id::Int
    ethnicity_concept_id::Int
    location_id::Union{Missing, Int} = missing
    provider_id::Union{Missing, Int} = missing
    care_site_id::Union{Missing, Int} = missing
    person_source_value::Union{Missing, String} = missing
    gender_source_value::Union{Missing, String} = missing
    gender_source_concept_id::Int
    race_source_value::Union{Missing, String} = missing
    race_source_concept_id::Int
    ethnicity_source_value::Union{Missing, String} = missing
    ethnicity_source_concept_id::Int
end
