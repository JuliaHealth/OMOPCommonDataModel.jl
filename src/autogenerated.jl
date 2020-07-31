import Dates


import DocStringExtensions


export Concept

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Concept <: OMOPType
    concept_id::Int
    concept_name::String
    domain_id::String
    vocabulary_id::String
    concept_class_id::String
    standard_concept::Union{String, Missing} = missing
    concept_code::String
    valid_start_date::Dates.DateTime
    valid_end_date::Dates.DateTime
    invalid_reason::Union{String, Missing} = missing
end


export Vocabulary

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Vocabulary <: OMOPType
    vocabulary_id::String
    vocabulary_name::String
    vocabulary_reference::String
    vocabulary_version::String
    vocabulary_concept_id::Int
end


export Domain

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Domain <: OMOPType
    domain_id::String
    domain_name::String
    domain_concept_id::Int
end


export ConceptClass

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConceptClass <: OMOPType
    concept_class_id::String
    concept_class_name::String
    concept_class_concept_id::Int
end


export ConceptRelationship

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConceptRelationship <: OMOPType
    concept_id_1::Int
    concept_id_2::Int
    relationship_id::String
    valid_start_date::Dates.DateTime
    valid_end_date::Dates.DateTime
    invalid_reason::Union{String, Missing} = missing
end


export Relationship

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Relationship <: OMOPType
    relationship_id::String
    relationship_name::String
    is_hierarchical::String
    defines_ancestry::String
    reverse_relationship_id::String
    relationship_concept_id::Int
end


export ConceptSynonym

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConceptSynonym <: OMOPType
    concept_id::Int
    concept_synonym_name::String
    language_concept_id::Int
end


export ConceptAncestor

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConceptAncestor <: OMOPType
    ancestor_concept_id::Int
    descendant_concept_id::Int
    min_levels_of_separation::Int
    max_levels_of_separation::Int
end


export SourceToConceptMap

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct SourceToConceptMap <: OMOPType
    source_code::String
    source_concept_id::Int
    source_vocabulary_id::String
    source_code_description::Union{String, Missing} = missing
    target_concept_id::Int
    target_vocabulary_id::String
    valid_start_date::Dates.DateTime
    valid_end_date::Dates.DateTime
    invalid_reason::Union{String, Missing} = missing
end


export DrugStrength

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DrugStrength <: OMOPType
    drug_concept_id::Int
    ingredient_concept_id::Int
    amount_value::Union{Float64, Missing} = missing
    amount_unit_concept_id::Union{Int, Missing} = missing
    numerator_value::Union{Float64, Missing} = missing
    numerator_unit_concept_id::Union{Int, Missing} = missing
    denominator_value::Union{Float64, Missing} = missing
    denominator_unit_concept_id::Union{Int, Missing} = missing
    box_size::Union{Int, Missing} = missing
    valid_start_date::Dates.DateTime
    valid_end_date::Dates.DateTime
    invalid_reason::Union{String, Missing} = missing
end


export CohortDefinition

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct CohortDefinition <: OMOPType
    cohort_definition_id::Int
    cohort_definition_name::String
    cohort_definition_description::Union{String, Missing} = missing
    definition_type_concept_id::Int
    cohort_definition_syntax::Union{String, Missing} = missing
    subject_concept_id::Int
    cohort_initiation_date::Union{Dates.DateTime, Missing} = missing
end


export AttributeDefinition

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct AttributeDefinition <: OMOPType
    attribute_definition_id::Int
    attribute_name::String
    attribute_description::Union{String, Missing} = missing
    attribute_type_concept_id::Int
    attribute_syntax::Union{String, Missing} = missing
end


export CdmSource

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct CdmSource <: OMOPType
    cdm_source_name::String
    cdm_source_abbreviation::Union{String, Missing} = missing
    cdm_holder::Union{String, Missing} = missing
    source_description::Union{String, Missing} = missing
    source_documentation_reference::Union{String, Missing} = missing
    cdm_etl_reference::Union{String, Missing} = missing
    source_release_date::Union{Dates.DateTime, Missing} = missing
    cdm_release_date::Union{Dates.DateTime, Missing} = missing
    cdm_version::Union{String, Missing} = missing
    vocabulary_version::Union{String, Missing} = missing
end


export Metadata

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Metadata <: OMOPType
    metadata_concept_id::Int
    metadata_type_concept_id::Int
    name::String
    value_as_string::Union{String, Missing} = missing
    value_as_concept_id::Union{Int, Missing} = missing
    metadata_date::Union{Dates.DateTime, Missing} = missing
    metadata_datetime::Union{Dates.DateTime, Missing} = missing
end


export Person

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Person <: OMOPType
    person_id::Int
    gender_concept_id::Int
    year_of_birth::Int
    month_of_birth::Union{Int, Missing} = missing
    day_of_birth::Union{Int, Missing} = missing
    birth_datetime::Union{Dates.DateTime, Missing} = missing
    race_concept_id::Int
    ethnicity_concept_id::Int
    location_id::Union{Int, Missing} = missing
    provider_id::Union{Int, Missing} = missing
    care_site_id::Union{Int, Missing} = missing
    person_source_value::Union{String, Missing} = missing
    gender_source_value::Union{String, Missing} = missing
    gender_source_concept_id::Union{Int, Missing} = missing
    race_source_value::Union{String, Missing} = missing
    race_source_concept_id::Union{Int, Missing} = missing
    ethnicity_source_value::Union{String, Missing} = missing
    ethnicity_source_concept_id::Union{Int, Missing} = missing
end


export ObservationPeriod

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ObservationPeriod <: OMOPType
    observation_period_id::Int
    person_id::Int
    observation_period_start_date::Dates.DateTime
    observation_period_end_date::Dates.DateTime
    period_type_concept_id::Int
end


export Specimen

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Specimen <: OMOPType
    specimen_id::Int
    person_id::Int
    specimen_concept_id::Int
    specimen_type_concept_id::Int
    specimen_date::Dates.DateTime
    specimen_datetime::Union{Dates.DateTime, Missing} = missing
    quantity::Union{Float64, Missing} = missing
    unit_concept_id::Union{Int, Missing} = missing
    anatomic_site_concept_id::Union{Int, Missing} = missing
    disease_status_concept_id::Union{Int, Missing} = missing
    specimen_source_id::Union{String, Missing} = missing
    specimen_source_value::Union{String, Missing} = missing
    unit_source_value::Union{String, Missing} = missing
    anatomic_site_source_value::Union{String, Missing} = missing
    disease_status_source_value::Union{String, Missing} = missing
end


export Death

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Death <: OMOPType
    person_id::Int
    death_date::Dates.DateTime
    death_datetime::Union{Dates.DateTime, Missing} = missing
    death_type_concept_id::Int
    cause_concept_id::Union{Int, Missing} = missing
    cause_source_value::Union{String, Missing} = missing
    cause_source_concept_id::Union{Int, Missing} = missing
end


export VisitOccurrence

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct VisitOccurrence <: OMOPType
    visit_occurrence_id::Int
    person_id::Int
    visit_concept_id::Int
    visit_start_date::Dates.DateTime
    visit_start_datetime::Union{Dates.DateTime, Missing} = missing
    visit_end_date::Dates.DateTime
    visit_end_datetime::Union{Dates.DateTime, Missing} = missing
    visit_type_concept_id::Int
    provider_id::Union{Int, Missing} = missing
    care_site_id::Union{Int, Missing} = missing
    visit_source_value::Union{String, Missing} = missing
    visit_source_concept_id::Union{Int, Missing} = missing
    admitting_source_concept_id::Union{Int, Missing} = missing
    admitting_source_value::Union{String, Missing} = missing
    discharge_to_concept_id::Union{Int, Missing} = missing
    discharge_to_source_value::Union{String, Missing} = missing
    preceding_visit_occurrence_id::Union{Int, Missing} = missing
end


export VisitDetail

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct VisitDetail <: OMOPType
    visit_detail_id::Int
    person_id::Int
    visit_detail_concept_id::Int
    visit_detail_start_date::Dates.DateTime
    visit_detail_start_datetime::Union{Dates.DateTime, Missing} = missing
    visit_detail_end_date::Dates.DateTime
    visit_detail_end_datetime::Union{Dates.DateTime, Missing} = missing
    visit_detail_type_concept_id::Int
    provider_id::Union{Int, Missing} = missing
    care_site_id::Union{Int, Missing} = missing
    admitting_source_concept_id::Union{Int, Missing} = missing
    discharge_to_concept_id::Union{Int, Missing} = missing
    preceding_visit_detail_id::Union{Int, Missing} = missing
    visit_detail_source_value::Union{String, Missing} = missing
    visit_detail_source_concept_id::Union{Int, Missing} = missing
    admitting_source_value::Union{String, Missing} = missing
    discharge_to_source_value::Union{String, Missing} = missing
    visit_detail_parent_id::Union{Int, Missing} = missing
    visit_occurrence_id::Int
end


export ProcedureOccurrence

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ProcedureOccurrence <: OMOPType
    procedure_occurrence_id::Int
    person_id::Int
    procedure_concept_id::Int
    procedure_date::Dates.DateTime
    procedure_datetime::Union{Dates.DateTime, Missing} = missing
    procedure_type_concept_id::Int
    modifier_concept_id::Union{Int, Missing} = missing
    quantity::Union{Int, Missing} = missing
    provider_id::Union{Int, Missing} = missing
    visit_occurrence_id::Union{Int, Missing} = missing
    visit_detail_id::Union{Int, Missing} = missing
    procedure_source_value::Union{String, Missing} = missing
    procedure_source_concept_id::Union{Int, Missing} = missing
    modifier_source_value::Union{String, Missing} = missing
end


export DrugExposure

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DrugExposure <: OMOPType
    drug_exposure_id::Int
    person_id::Int
    drug_concept_id::Int
    drug_exposure_start_date::Dates.DateTime
    drug_exposure_start_datetime::Union{Dates.DateTime, Missing} = missing
    drug_exposure_end_date::Dates.DateTime
    drug_exposure_end_datetime::Union{Dates.DateTime, Missing} = missing
    verbatim_end_date::Union{Dates.DateTime, Missing} = missing
    drug_type_concept_id::Int
    stop_reason::Union{String, Missing} = missing
    refills::Union{Int, Missing} = missing
    quantity::Union{Float64, Missing} = missing
    days_supply::Union{Int, Missing} = missing
    sig::Union{String, Missing} = missing
    route_concept_id::Union{Int, Missing} = missing
    lot_number::Union{String, Missing} = missing
    provider_id::Union{Int, Missing} = missing
    visit_occurrence_id::Union{Int, Missing} = missing
    visit_detail_id::Union{Int, Missing} = missing
    drug_source_value::Union{String, Missing} = missing
    drug_source_concept_id::Union{Int, Missing} = missing
    route_source_value::Union{String, Missing} = missing
    dose_unit_source_value::Union{String, Missing} = missing
end


export DeviceExposure

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DeviceExposure <: OMOPType
    device_exposure_id::Int
    person_id::Int
    device_concept_id::Int
    device_exposure_start_date::Dates.DateTime
    device_exposure_start_datetime::Union{Dates.DateTime, Missing} = missing
    device_exposure_end_date::Union{Dates.DateTime, Missing} = missing
    device_exposure_end_datetime::Union{Dates.DateTime, Missing} = missing
    device_type_concept_id::Int
    unique_device_id::Union{String, Missing} = missing
    quantity::Union{Int, Missing} = missing
    provider_id::Union{Int, Missing} = missing
    visit_occurrence_id::Union{Int, Missing} = missing
    visit_detail_id::Union{Int, Missing} = missing
    device_source_value::Union{String, Missing} = missing
    device_source_concept_id::Union{Int, Missing} = missing
end


export ConditionOccurrence

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConditionOccurrence <: OMOPType
    condition_occurrence_id::Int
    person_id::Int
    condition_concept_id::Int
    condition_start_date::Dates.DateTime
    condition_start_datetime::Union{Dates.DateTime, Missing} = missing
    condition_end_date::Union{Dates.DateTime, Missing} = missing
    condition_end_datetime::Union{Dates.DateTime, Missing} = missing
    condition_type_concept_id::Int
    stop_reason::Union{String, Missing} = missing
    provider_id::Union{Int, Missing} = missing
    visit_occurrence_id::Union{Int, Missing} = missing
    visit_detail_id::Union{Int, Missing} = missing
    condition_source_value::Union{String, Missing} = missing
    condition_source_concept_id::Union{Int, Missing} = missing
    condition_status_source_value::Union{String, Missing} = missing
    condition_status_concept_id::Union{Int, Missing} = missing
end


export Measurement

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Measurement <: OMOPType
    measurement_id::Int
    person_id::Int
    measurement_concept_id::Int
    measurement_date::Dates.DateTime
    measurement_datetime::Union{Dates.DateTime, Missing} = missing
    measurement_time::Union{String, Missing} = missing
    measurement_type_concept_id::Int
    operator_concept_id::Union{Int, Missing} = missing
    value_as_number::Union{Float64, Missing} = missing
    value_as_concept_id::Union{Int, Missing} = missing
    unit_concept_id::Union{Int, Missing} = missing
    range_low::Union{Float64, Missing} = missing
    range_high::Union{Float64, Missing} = missing
    provider_id::Union{Int, Missing} = missing
    visit_occurrence_id::Union{Int, Missing} = missing
    visit_detail_id::Union{Int, Missing} = missing
    measurement_source_value::Union{String, Missing} = missing
    measurement_source_concept_id::Union{Int, Missing} = missing
    unit_source_value::Union{String, Missing} = missing
    value_source_value::Union{String, Missing} = missing
end


export Note

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Note <: OMOPType
    note_id::Int
    person_id::Int
    note_date::Dates.DateTime
    note_datetime::Union{Dates.DateTime, Missing} = missing
    note_type_concept_id::Int
    note_class_concept_id::Int
    note_title::Union{String, Missing} = missing
    note_text::Union{String, Missing} = missing
    encoding_concept_id::Int
    language_concept_id::Int
    provider_id::Union{Int, Missing} = missing
    visit_occurrence_id::Union{Int, Missing} = missing
    visit_detail_id::Union{Int, Missing} = missing
    note_source_value::Union{String, Missing} = missing
end


export NoteNlp

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct NoteNlp <: OMOPType
    note_nlp_id::Int
    note_id::Int
    section_concept_id::Union{Int, Missing} = missing
    snippet::Union{String, Missing} = missing
    offset::Union{String, Missing} = missing
    lexical_variant::String
    note_nlp_concept_id::Union{Int, Missing} = missing
    note_nlp_source_concept_id::Union{Int, Missing} = missing
    nlp_system::Union{String, Missing} = missing
    nlp_date::Dates.DateTime
    nlp_datetime::Union{Dates.DateTime, Missing} = missing
    term_exists::Union{String, Missing} = missing
    term_temporal::Union{String, Missing} = missing
    term_modifiers::Union{String, Missing} = missing
end


export Observation

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Observation <: OMOPType
    observation_id::Int
    person_id::Int
    observation_concept_id::Int
    observation_date::Dates.DateTime
    observation_datetime::Union{Dates.DateTime, Missing} = missing
    observation_type_concept_id::Int
    value_as_number::Union{Float64, Missing} = missing
    value_as_string::Union{String, Missing} = missing
    value_as_concept_id::Union{Int, Missing} = missing
    qualifier_concept_id::Union{Int, Missing} = missing
    unit_concept_id::Union{Int, Missing} = missing
    provider_id::Union{Int, Missing} = missing
    visit_occurrence_id::Union{Int, Missing} = missing
    visit_detail_id::Union{Int, Missing} = missing
    observation_source_value::Union{String, Missing} = missing
    observation_source_concept_id::Union{Int, Missing} = missing
    unit_source_value::Union{String, Missing} = missing
    qualifier_source_value::Union{String, Missing} = missing
end


export FactRelationship

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct FactRelationship <: OMOPType
    domain_concept_id_1::Int
    fact_id_1::Int
    domain_concept_id_2::Int
    fact_id_2::Int
    relationship_concept_id::Int
end


export Location

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Location <: OMOPType
    location_id::Int
    address_1::Union{String, Missing} = missing
    address_2::Union{String, Missing} = missing
    city::Union{String, Missing} = missing
    state::Union{String, Missing} = missing
    zip::Union{String, Missing} = missing
    county::Union{String, Missing} = missing
    location_source_value::Union{String, Missing} = missing
end


export CareSite

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct CareSite <: OMOPType
    care_site_id::Int
    care_site_name::Union{String, Missing} = missing
    place_of_service_concept_id::Union{Int, Missing} = missing
    location_id::Union{Int, Missing} = missing
    care_site_source_value::Union{String, Missing} = missing
    place_of_service_source_value::Union{String, Missing} = missing
end


export Provider

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Provider <: OMOPType
    provider_id::Int
    provider_name::Union{String, Missing} = missing
    NPI::Union{String, Missing} = missing
    DEA::Union{String, Missing} = missing
    specialty_concept_id::Union{Int, Missing} = missing
    care_site_id::Union{Int, Missing} = missing
    year_of_birth::Union{Int, Missing} = missing
    gender_concept_id::Union{Int, Missing} = missing
    provider_source_value::Union{String, Missing} = missing
    specialty_source_value::Union{String, Missing} = missing
    specialty_source_concept_id::Union{Int, Missing} = missing
    gender_source_value::Union{String, Missing} = missing
    gender_source_concept_id::Union{Int, Missing} = missing
end


export PayerPlanPeriod

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct PayerPlanPeriod <: OMOPType
    payer_plan_period_id::Int
    person_id::Int
    payer_plan_period_start_date::Dates.DateTime
    payer_plan_period_end_date::Dates.DateTime
    payer_concept_id::Union{Int, Missing} = missing
    payer_source_value::Union{String, Missing} = missing
    payer_source_concept_id::Union{Int, Missing} = missing
    plan_concept_id::Union{Int, Missing} = missing
    plan_source_value::Union{String, Missing} = missing
    plan_source_concept_id::Union{Int, Missing} = missing
    sponsor_concept_id::Union{Int, Missing} = missing
    sponsor_source_value::Union{String, Missing} = missing
    sponsor_source_concept_id::Union{Int, Missing} = missing
    family_source_value::Union{String, Missing} = missing
    stop_reason_concept_id::Union{Int, Missing} = missing
    stop_reason_source_value::Union{String, Missing} = missing
    stop_reason_source_concept_id::Union{Int, Missing} = missing
end


export Cost

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Cost <: OMOPType
    cost_id::Int
    cost_event_id::Int
    cost_domain_id::String
    cost_type_concept_id::Int
    currency_concept_id::Union{Int, Missing} = missing
    total_charge::Union{Float64, Missing} = missing
    total_cost::Union{Float64, Missing} = missing
    total_paid::Union{Float64, Missing} = missing
    paid_by_payer::Union{Float64, Missing} = missing
    paid_by_patient::Union{Float64, Missing} = missing
    paid_patient_copay::Union{Float64, Missing} = missing
    paid_patient_coinsurance::Union{Float64, Missing} = missing
    paid_patient_deductible::Union{Float64, Missing} = missing
    paid_by_primary::Union{Float64, Missing} = missing
    paid_ingredient_cost::Union{Float64, Missing} = missing
    paid_dispensing_fee::Union{Float64, Missing} = missing
    payer_plan_period_id::Union{Int, Missing} = missing
    amount_allowed::Union{Float64, Missing} = missing
    revenue_code_concept_id::Union{Int, Missing} = missing
    reveue_code_source_value::Union{String, Missing} = missing
    drg_concept_id::Union{Int, Missing} = missing
    drg_source_value::Union{String, Missing} = missing
end


export Cohort

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Cohort <: OMOPType
    cohort_definition_id::Int
    subject_id::Int
    cohort_start_date::Dates.DateTime
    cohort_end_date::Dates.DateTime
end


export CohortAttribute

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct CohortAttribute <: OMOPType
    cohort_definition_id::Int
    subject_id::Int
    cohort_start_date::Dates.DateTime
    cohort_end_date::Dates.DateTime
    attribute_definition_id::Int
    value_as_number::Union{Float64, Missing} = missing
    value_as_concept_id::Union{Int, Missing} = missing
end


export DrugEra

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DrugEra <: OMOPType
    drug_era_id::Int
    person_id::Int
    drug_concept_id::Int
    drug_era_start_date::Dates.DateTime
    drug_era_end_date::Dates.DateTime
    drug_exposure_count::Union{Int, Missing} = missing
    gap_days::Union{Int, Missing} = missing
end


export DoseEra

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DoseEra <: OMOPType
    dose_era_id::Int
    person_id::Int
    drug_concept_id::Int
    unit_concept_id::Int
    dose_value::Float64
    dose_era_start_date::Dates.DateTime
    dose_era_end_date::Dates.DateTime
end


export ConditionEra

"""
$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConditionEra <: OMOPType
    condition_era_id::Int
    person_id::Int
    condition_concept_id::Int
    condition_era_start_date::Dates.DateTime
    condition_era_end_date::Dates.DateTime
    condition_occurrence_count::Union{Int, Missing} = missing
end
