import Dates


import DocStringExtensions


export Person

"""
CDM table name: PERSON

Julia struct name: Person

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Person <: CDMType
    person_id::Int # required
    gender_concept_id::Int # required
    year_of_birth::Int # required
    month_of_birth::Union{Int, Missing} = missing # optional
    day_of_birth::Union{Int, Missing} = missing # optional
    birth_datetime::Union{Dates.DateTime, Missing} = missing # optional
    race_concept_id::Int # required
    ethnicity_concept_id::Int # required
    location_id::Union{Int, Missing} = missing # optional
    provider_id::Union{Int, Missing} = missing # optional
    care_site_id::Union{Int, Missing} = missing # optional
    person_source_value::Union{String, Missing} = missing # optional
    gender_source_value::Union{String, Missing} = missing # optional
    gender_source_concept_id::Union{Int, Missing} = missing # optional
    race_source_value::Union{String, Missing} = missing # optional
    race_source_concept_id::Union{Int, Missing} = missing # optional
    ethnicity_source_value::Union{String, Missing} = missing # optional
    ethnicity_source_concept_id::Union{Int, Missing} = missing # optional
end


export ObservationPeriod

"""
CDM table name: OBSERVATION_PERIOD

Julia struct name: ObservationPeriod

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ObservationPeriod <: CDMType
    observation_period_id::Int # required
    person_id::Int # required
    observation_period_start_date::Dates.DateTime # required
    observation_period_end_date::Dates.DateTime # required
    period_type_concept_id::Int # required
end


export VisitOccurrence

"""
CDM table name: VISIT_OCCURRENCE

Julia struct name: VisitOccurrence

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct VisitOccurrence <: CDMType
    visit_occurrence_id::Int # required
    person_id::Int # required
    visit_concept_id::Int # required
    visit_start_date::Dates.DateTime # required
    visit_start_datetime::Union{Dates.DateTime, Missing} = missing # optional
    visit_end_date::Dates.DateTime # required
    visit_end_datetime::Union{Dates.DateTime, Missing} = missing # optional
    visit_type_concept_id::Int # required
    provider_id::Union{Int, Missing} = missing # optional
    care_site_id::Union{Int, Missing} = missing # optional
    visit_source_value::Union{String, Missing} = missing # optional
    visit_source_concept_id::Union{Int, Missing} = missing # optional
    admitting_source_concept_id::Union{Int, Missing} = missing # optional
    admitting_source_value::Union{String, Missing} = missing # optional
    discharge_to_concept_id::Union{Int, Missing} = missing # optional
    discharge_to_source_value::Union{String, Missing} = missing # optional
    preceding_visit_occurrence_id::Union{Int, Missing} = missing # optional
end


export VisitDetail

"""
CDM table name: VISIT_DETAIL

Julia struct name: VisitDetail

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct VisitDetail <: CDMType
    visit_detail_id::Int # required
    person_id::Int # required
    visit_detail_concept_id::Int # required
    visit_detail_start_date::Dates.DateTime # required
    visit_detail_start_datetime::Union{Dates.DateTime, Missing} = missing # optional
    visit_detail_end_date::Dates.DateTime # required
    visit_detail_end_datetime::Union{Dates.DateTime, Missing} = missing # optional
    visit_detail_type_concept_id::Int # required
    provider_id::Union{Int, Missing} = missing # optional
    care_site_id::Union{Int, Missing} = missing # optional
    visit_detail_source_value::Union{String, Missing} = missing # optional
    visit_detail_source_concept_id::Union{Int, Missing} = missing # optional
    admitting_source_value::Union{String, Missing} = missing # optional
    admitting_source_concept_id::Union{Int, Missing} = missing # optional
    discharge_to_source_value::Union{String, Missing} = missing # optional
    discharge_to_concept_id::Union{Int, Missing} = missing # optional
    preceding_visit_detail_id::Union{Int, Missing} = missing # optional
    visit_detail_parent_id::Union{Int, Missing} = missing # optional
    visit_occurrence_id::Int # required
end


export ConditionOccurrence

"""
CDM table name: CONDITION_OCCURRENCE

Julia struct name: ConditionOccurrence

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConditionOccurrence <: CDMType
    condition_occurrence_id::Int # required
    person_id::Int # required
    condition_concept_id::Int # required
    condition_start_date::Dates.DateTime # required
    condition_start_datetime::Union{Dates.DateTime, Missing} = missing # optional
    condition_end_date::Union{Dates.DateTime, Missing} = missing # optional
    condition_end_datetime::Union{Dates.DateTime, Missing} = missing # optional
    condition_type_concept_id::Int # required
    condition_status_concept_id::Union{Int, Missing} = missing # optional
    stop_reason::Union{String, Missing} = missing # optional
    provider_id::Union{Int, Missing} = missing # optional
    visit_occurrence_id::Union{Int, Missing} = missing # optional
    visit_detail_id::Union{Int, Missing} = missing # optional
    condition_source_value::Union{String, Missing} = missing # optional
    condition_source_concept_id::Union{Int, Missing} = missing # optional
    condition_status_source_value::Union{String, Missing} = missing # optional
end


export DrugExposure

"""
CDM table name: DRUG_EXPOSURE

Julia struct name: DrugExposure

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DrugExposure <: CDMType
    drug_exposure_id::Int # required
    person_id::Int # required
    drug_concept_id::Int # required
    drug_exposure_start_date::Dates.DateTime # required
    drug_exposure_start_datetime::Union{Dates.DateTime, Missing} = missing # optional
    drug_exposure_end_date::Dates.DateTime # required
    drug_exposure_end_datetime::Union{Dates.DateTime, Missing} = missing # optional
    verbatim_end_date::Union{Dates.DateTime, Missing} = missing # optional
    drug_type_concept_id::Int # required
    stop_reason::Union{String, Missing} = missing # optional
    refills::Union{Int, Missing} = missing # optional
    quantity::Union{Float64, Missing} = missing # optional
    days_supply::Union{Int, Missing} = missing # optional
    sig::Union{String, Missing} = missing # optional
    route_concept_id::Union{Int, Missing} = missing # optional
    lot_number::Union{String, Missing} = missing # optional
    provider_id::Union{Int, Missing} = missing # optional
    visit_occurrence_id::Union{Int, Missing} = missing # optional
    visit_detail_id::Union{Int, Missing} = missing # optional
    drug_source_value::Union{String, Missing} = missing # optional
    drug_source_concept_id::Union{Int, Missing} = missing # optional
    route_source_value::Union{String, Missing} = missing # optional
    dose_unit_source_value::Union{String, Missing} = missing # optional
end


export ProcedureOccurrence

"""
CDM table name: PROCEDURE_OCCURRENCE

Julia struct name: ProcedureOccurrence

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ProcedureOccurrence <: CDMType
    procedure_occurrence_id::Int # required
    person_id::Int # required
    procedure_concept_id::Int # required
    procedure_date::Dates.DateTime # required
    procedure_datetime::Union{Dates.DateTime, Missing} = missing # optional
    procedure_type_concept_id::Int # required
    modifier_concept_id::Union{Int, Missing} = missing # optional
    quantity::Union{Int, Missing} = missing # optional
    provider_id::Union{Int, Missing} = missing # optional
    visit_occurrence_id::Union{Int, Missing} = missing # optional
    visit_detail_id::Union{Int, Missing} = missing # optional
    procedure_source_value::Union{String, Missing} = missing # optional
    procedure_source_concept_id::Union{Int, Missing} = missing # optional
    modifier_source_value::Union{String, Missing} = missing # optional
end


export DeviceExposure

"""
CDM table name: DEVICE_EXPOSURE

Julia struct name: DeviceExposure

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DeviceExposure <: CDMType
    device_exposure_id::Int # required
    person_id::Int # required
    device_concept_id::Int # required
    device_exposure_start_date::Dates.DateTime # required
    device_exposure_start_datetime::Union{Dates.DateTime, Missing} = missing # optional
    device_exposure_end_date::Union{Dates.DateTime, Missing} = missing # optional
    device_exposure_end_datetime::Union{Dates.DateTime, Missing} = missing # optional
    device_type_concept_id::Int # required
    unique_device_id::Union{String, Missing} = missing # optional
    quantity::Union{Int, Missing} = missing # optional
    provider_id::Union{Int, Missing} = missing # optional
    visit_occurrence_id::Union{Int, Missing} = missing # optional
    visit_detail_id::Union{Int, Missing} = missing # optional
    device_source_value::Union{String, Missing} = missing # optional
    device_source_concept_id::Union{Int, Missing} = missing # optional
end


export Measurement

"""
CDM table name: MEASUREMENT

Julia struct name: Measurement

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Measurement <: CDMType
    measurement_id::Int # required
    person_id::Int # required
    measurement_concept_id::Int # required
    measurement_date::Dates.DateTime # required
    measurement_datetime::Union{Dates.DateTime, Missing} = missing # optional
    measurement_time::Union{String, Missing} = missing # optional
    measurement_type_concept_id::Int # required
    operator_concept_id::Union{Int, Missing} = missing # optional
    value_as_number::Union{Float64, Missing} = missing # optional
    value_as_concept_id::Union{Int, Missing} = missing # optional
    unit_concept_id::Union{Int, Missing} = missing # optional
    range_low::Union{Float64, Missing} = missing # optional
    range_high::Union{Float64, Missing} = missing # optional
    provider_id::Union{Int, Missing} = missing # optional
    visit_occurrence_id::Union{Int, Missing} = missing # optional
    visit_detail_id::Union{Int, Missing} = missing # optional
    measurement_source_value::Union{String, Missing} = missing # optional
    measurement_source_concept_id::Union{Int, Missing} = missing # optional
    unit_source_value::Union{String, Missing} = missing # optional
    value_source_value::Union{String, Missing} = missing # optional
end


export Observation

"""
CDM table name: OBSERVATION

Julia struct name: Observation

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Observation <: CDMType
    observation_id::Int # required
    person_id::Int # required
    observation_concept_id::Int # required
    observation_date::Dates.DateTime # required
    observation_datetime::Union{Dates.DateTime, Missing} = missing # optional
    observation_type_concept_id::Int # required
    value_as_number::Union{Float64, Missing} = missing # optional
    value_as_string::Union{String, Missing} = missing # optional
    value_as_concept_id::Union{Int, Missing} = missing # optional
    qualifier_concept_id::Union{Int, Missing} = missing # optional
    unit_concept_id::Union{Int, Missing} = missing # optional
    provider_id::Union{Int, Missing} = missing # optional
    visit_occurrence_id::Union{Int, Missing} = missing # optional
    visit_detail_id::Union{Int, Missing} = missing # optional
    observation_source_value::Union{String, Missing} = missing # optional
    observation_source_concept_id::Union{Int, Missing} = missing # optional
    unit_source_value::Union{String, Missing} = missing # optional
    qualifier_source_value::Union{String, Missing} = missing # optional
end


export Death

"""
CDM table name: DEATH

Julia struct name: Death

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Death <: CDMType
    person_id::Int # required
    death_date::Dates.DateTime # required
    death_datetime::Union{Dates.DateTime, Missing} = missing # optional
    death_type_concept_id::Union{Int, Missing} = missing # optional
    cause_concept_id::Union{Int, Missing} = missing # optional
    cause_source_value::Union{String, Missing} = missing # optional
    cause_source_concept_id::Union{Int, Missing} = missing # optional
end


export Note

"""
CDM table name: NOTE

Julia struct name: Note

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Note <: CDMType
    note_id::Int # required
    person_id::Int # required
    note_date::Dates.DateTime # required
    note_datetime::Union{Dates.DateTime, Missing} = missing # optional
    note_type_concept_id::Int # required
    note_class_concept_id::Int # required
    note_title::Union{String, Missing} = missing # optional
    note_text::String # required
    encoding_concept_id::Int # required
    language_concept_id::Int # required
    provider_id::Union{Int, Missing} = missing # optional
    visit_occurrence_id::Union{Int, Missing} = missing # optional
    visit_detail_id::Union{Int, Missing} = missing # optional
    note_source_value::Union{String, Missing} = missing # optional
end


export NoteNlp

"""
CDM table name: NOTE_NLP

Julia struct name: NoteNlp

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct NoteNlp <: CDMType
    note_nlp_id::Int # required
    note_id::Int # required
    section_concept_id::Union{Int, Missing} = missing # optional
    snippet::Union{String, Missing} = missing # optional
    offset::Union{String, Missing} = missing # optional
    lexical_variant::String # required
    note_nlp_concept_id::Union{Int, Missing} = missing # optional
    note_nlp_source_concept_id::Union{Int, Missing} = missing # optional
    nlp_system::Union{String, Missing} = missing # optional
    nlp_date::Dates.DateTime # required
    nlp_datetime::Union{Dates.DateTime, Missing} = missing # optional
    term_exists::Union{String, Missing} = missing # optional
    term_temporal::Union{String, Missing} = missing # optional
    term_modifiers::Union{String, Missing} = missing # optional
end


export Specimen

"""
CDM table name: SPECIMEN

Julia struct name: Specimen

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Specimen <: CDMType
    specimen_id::Int # required
    person_id::Int # required
    specimen_concept_id::Int # required
    specimen_type_concept_id::Int # required
    specimen_date::Dates.DateTime # required
    specimen_datetime::Union{Dates.DateTime, Missing} = missing # optional
    quantity::Union{Float64, Missing} = missing # optional
    unit_concept_id::Union{Int, Missing} = missing # optional
    anatomic_site_concept_id::Union{Int, Missing} = missing # optional
    disease_status_concept_id::Union{Int, Missing} = missing # optional
    specimen_source_id::Union{String, Missing} = missing # optional
    specimen_source_value::Union{String, Missing} = missing # optional
    unit_source_value::Union{String, Missing} = missing # optional
    anatomic_site_source_value::Union{String, Missing} = missing # optional
    disease_status_source_value::Union{String, Missing} = missing # optional
end


export FactRelationship

"""
CDM table name: FACT_RELATIONSHIP

Julia struct name: FactRelationship

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct FactRelationship <: CDMType
    domain_concept_id_1::Int # required
    fact_id_1::Int # required
    domain_concept_id_2::Int # required
    fact_id_2::Int # required
    relationship_concept_id::Int # required
end


export Location

"""
CDM table name: LOCATION

Julia struct name: Location

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Location <: CDMType
    location_id::Int # required
    address_1::Union{String, Missing} = missing # optional
    address_2::Union{String, Missing} = missing # optional
    city::Union{String, Missing} = missing # optional
    state::Union{String, Missing} = missing # optional
    zip::Union{String, Missing} = missing # optional
    county::Union{String, Missing} = missing # optional
    location_source_value::Union{String, Missing} = missing # optional
end


export CareSite

"""
CDM table name: CARE_SITE

Julia struct name: CareSite

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct CareSite <: CDMType
    care_site_id::Int # required
    care_site_name::Union{String, Missing} = missing # optional
    place_of_service_concept_id::Union{Int, Missing} = missing # optional
    location_id::Union{Int, Missing} = missing # optional
    care_site_source_value::Union{String, Missing} = missing # optional
    place_of_service_source_value::Union{String, Missing} = missing # optional
end


export Provider

"""
CDM table name: PROVIDER

Julia struct name: Provider

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Provider <: CDMType
    provider_id::Int # required
    provider_name::Union{String, Missing} = missing # optional
    npi::Union{String, Missing} = missing # optional
    dea::Union{String, Missing} = missing # optional
    specialty_concept_id::Union{Int, Missing} = missing # optional
    care_site_id::Union{Int, Missing} = missing # optional
    year_of_birth::Union{Int, Missing} = missing # optional
    gender_concept_id::Union{Int, Missing} = missing # optional
    provider_source_value::Union{String, Missing} = missing # optional
    specialty_source_value::Union{String, Missing} = missing # optional
    specialty_source_concept_id::Union{Int, Missing} = missing # optional
    gender_source_value::Union{String, Missing} = missing # optional
    gender_source_concept_id::Union{Int, Missing} = missing # optional
end


export PayerPlanPeriod

"""
CDM table name: PAYER_PLAN_PERIOD

Julia struct name: PayerPlanPeriod

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct PayerPlanPeriod <: CDMType
    payer_plan_period_id::Int # required
    person_id::Int # required
    payer_plan_period_start_date::Dates.DateTime # required
    payer_plan_period_end_date::Dates.DateTime # required
    payer_concept_id::Union{Int, Missing} = missing # optional
    payer_source_value::Union{String, Missing} = missing # optional
    payer_source_concept_id::Union{Int, Missing} = missing # optional
    plan_concept_id::Union{Int, Missing} = missing # optional
    plan_source_value::Union{String, Missing} = missing # optional
    plan_source_concept_id::Union{Int, Missing} = missing # optional
    sponsor_concept_id::Union{Int, Missing} = missing # optional
    sponsor_source_value::Union{String, Missing} = missing # optional
    sponsor_source_concept_id::Union{Int, Missing} = missing # optional
    family_source_value::Union{String, Missing} = missing # optional
    stop_reason_concept_id::Union{Int, Missing} = missing # optional
    stop_reason_source_value::Union{String, Missing} = missing # optional
    stop_reason_source_concept_id::Union{Int, Missing} = missing # optional
end


export Cost

"""
CDM table name: COST

Julia struct name: Cost

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Cost <: CDMType
    cost_id::Int # required
    cost_event_id::Int # required
    cost_domain_id::String # required
    cost_type_concept_id::Int # required
    currency_concept_id::Union{Int, Missing} = missing # optional
    total_charge::Union{Float64, Missing} = missing # optional
    total_cost::Union{Float64, Missing} = missing # optional
    total_paid::Union{Float64, Missing} = missing # optional
    paid_by_payer::Union{Float64, Missing} = missing # optional
    paid_by_patient::Union{Float64, Missing} = missing # optional
    paid_patient_copay::Union{Float64, Missing} = missing # optional
    paid_patient_coinsurance::Union{Float64, Missing} = missing # optional
    paid_patient_deductible::Union{Float64, Missing} = missing # optional
    paid_by_primary::Union{Float64, Missing} = missing # optional
    paid_ingredient_cost::Union{Float64, Missing} = missing # optional
    paid_dispensing_fee::Union{Float64, Missing} = missing # optional
    payer_plan_period_id::Union{Int, Missing} = missing # optional
    amount_allowed::Union{Float64, Missing} = missing # optional
    revenue_code_concept_id::Union{Int, Missing} = missing # optional
    revenue_code_source_value::Union{String, Missing} = missing # optional
    drg_concept_id::Union{Int, Missing} = missing # optional
    drg_source_value::Union{String, Missing} = missing # optional
end


export DrugEra

"""
CDM table name: DRUG_ERA

Julia struct name: DrugEra

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DrugEra <: CDMType
    drug_era_id::Int # required
    person_id::Int # required
    drug_concept_id::Int # required
    drug_era_start_date::Dates.DateTime # required
    drug_era_end_date::Dates.DateTime # required
    drug_exposure_count::Union{Int, Missing} = missing # optional
    gap_days::Union{Int, Missing} = missing # optional
end


export DoseEra

"""
CDM table name: DOSE_ERA

Julia struct name: DoseEra

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DoseEra <: CDMType
    dose_era_id::Int # required
    person_id::Int # required
    drug_concept_id::Int # required
    unit_concept_id::Int # required
    dose_value::Float64 # required
    dose_era_start_date::Dates.DateTime # required
    dose_era_end_date::Dates.DateTime # required
end


export ConditionEra

"""
CDM table name: CONDITION_ERA

Julia struct name: ConditionEra

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConditionEra <: CDMType
    condition_era_id::Int # required
    person_id::Int # required
    condition_concept_id::Int # required
    condition_era_start_date::Dates.DateTime # required
    condition_era_end_date::Dates.DateTime # required
    condition_occurrence_count::Union{Int, Missing} = missing # optional
end


export Metadata

"""
CDM table name: METADATA

Julia struct name: Metadata

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Metadata <: CDMType
    metadata_concept_id::Int # required
    metadata_type_concept_id::Int # required
    name::String # required
    value_as_string::Union{String, Missing} = missing # optional
    value_as_concept_id::Union{Int, Missing} = missing # optional
    metadata_date::Union{Dates.DateTime, Missing} = missing # optional
    metadata_datetime::Union{Dates.DateTime, Missing} = missing # optional
end


export CdmSource

"""
CDM table name: CDM_SOURCE

Julia struct name: CdmSource

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct CdmSource <: CDMType
    cdm_source_name::String # required
    cdm_source_abbreviation::Union{String, Missing} = missing # optional
    cdm_holder::Union{String, Missing} = missing # optional
    source_description::Union{String, Missing} = missing # optional
    source_documentation_reference::Union{String, Missing} = missing # optional
    cdm_etl_reference::Union{String, Missing} = missing # optional
    source_release_date::Union{Dates.DateTime, Missing} = missing # optional
    cdm_release_date::Union{Dates.DateTime, Missing} = missing # optional
    cdm_version::Union{String, Missing} = missing # optional
    vocabulary_version::Union{String, Missing} = missing # optional
end


export Concept

"""
CDM table name: CONCEPT

Julia struct name: Concept

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Concept <: CDMType
    concept_id::Int # required
    concept_name::String # required
    domain_id::String # required
    vocabulary_id::String # required
    concept_class_id::String # required
    standard_concept::Union{String, Missing} = missing # optional
    concept_code::String # required
    valid_start_date::Dates.DateTime # required
    valid_end_date::Dates.DateTime # required
    invalid_reason::Union{String, Missing} = missing # optional
end


export Vocabulary

"""
CDM table name: VOCABULARY

Julia struct name: Vocabulary

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Vocabulary <: CDMType
    vocabulary_id::String # required
    vocabulary_name::String # required
    vocabulary_reference::String # required
    vocabulary_version::Union{String, Missing} = missing # optional
    vocabulary_concept_id::Int # required
end


export Domain

"""
CDM table name: DOMAIN

Julia struct name: Domain

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Domain <: CDMType
    domain_id::String # required
    domain_name::String # required
    domain_concept_id::Int # required
end


export ConceptClass

"""
CDM table name: CONCEPT_CLASS

Julia struct name: ConceptClass

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConceptClass <: CDMType
    concept_class_id::String # required
    concept_class_name::String # required
    concept_class_concept_id::Int # required
end


export ConceptRelationship

"""
CDM table name: CONCEPT_RELATIONSHIP

Julia struct name: ConceptRelationship

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConceptRelationship <: CDMType
    concept_id_1::Int # required
    concept_id_2::Int # required
    relationship_id::String # required
    valid_start_date::Dates.DateTime # required
    valid_end_date::Dates.DateTime # required
    invalid_reason::Union{String, Missing} = missing # optional
end


export Relationship

"""
CDM table name: RELATIONSHIP

Julia struct name: Relationship

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct Relationship <: CDMType
    relationship_id::String # required
    relationship_name::String # required
    is_hierarchical::String # required
    defines_ancestry::String # required
    reverse_relationship_id::String # required
    relationship_concept_id::Int # required
end


export ConceptSynonym

"""
CDM table name: CONCEPT_SYNONYM

Julia struct name: ConceptSynonym

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConceptSynonym <: CDMType
    concept_id::Int # required
    concept_synonym_name::String # required
    language_concept_id::Int # required
end


export ConceptAncestor

"""
CDM table name: CONCEPT_ANCESTOR

Julia struct name: ConceptAncestor

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct ConceptAncestor <: CDMType
    ancestor_concept_id::Int # required
    descendant_concept_id::Int # required
    min_levels_of_separation::Int # required
    max_levels_of_separation::Int # required
end


export SourceToConceptMap

"""
CDM table name: SOURCE_TO_CONCEPT_MAP

Julia struct name: SourceToConceptMap

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct SourceToConceptMap <: CDMType
    source_code::String # required
    source_concept_id::Int # required
    source_vocabulary_id::String # required
    source_code_description::Union{String, Missing} = missing # optional
    target_concept_id::Int # required
    target_vocabulary_id::String # required
    valid_start_date::Dates.DateTime # required
    valid_end_date::Dates.DateTime # required
    invalid_reason::Union{String, Missing} = missing # optional
end


export DrugStrength

"""
CDM table name: DRUG_STRENGTH

Julia struct name: DrugStrength

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct DrugStrength <: CDMType
    drug_concept_id::Int # required
    ingredient_concept_id::Int # required
    amount_value::Union{Float64, Missing} = missing # optional
    amount_unit_concept_id::Union{Int, Missing} = missing # optional
    numerator_value::Union{Float64, Missing} = missing # optional
    numerator_unit_concept_id::Union{Int, Missing} = missing # optional
    denominator_value::Union{Float64, Missing} = missing # optional
    denominator_unit_concept_id::Union{Int, Missing} = missing # optional
    box_size::Union{Int, Missing} = missing # optional
    valid_start_date::Dates.DateTime # required
    valid_end_date::Dates.DateTime # required
    invalid_reason::Union{String, Missing} = missing # optional
end


export CohortDefinition

"""
CDM table name: COHORT_DEFINITION

Julia struct name: CohortDefinition

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct CohortDefinition <: CDMType
    cohort_definition_id::Int # required
    cohort_definition_name::String # required
    cohort_definition_description::Union{String, Missing} = missing # optional
    definition_type_concept_id::Int # required
    cohort_definition_syntax::Union{String, Missing} = missing # optional
    subject_concept_id::Int # required
    cohort_initiation_date::Union{Dates.DateTime, Missing} = missing # optional
end


export AttributeDefinition

"""
CDM table name: ATTRIBUTE_DEFINITION

Julia struct name: AttributeDefinition

$(DocStringExtensions.TYPEDEF)
$(DocStringExtensions.TYPEDFIELDS)
"""
Base.@kwdef struct AttributeDefinition <: CDMType
    attribute_definition_id::Int # required
    attribute_name::String # required
    attribute_description::Union{String, Missing} = missing # optional
    attribute_type_concept_id::Int # required
    attribute_syntax::Union{String, Missing} = missing # optional
end
