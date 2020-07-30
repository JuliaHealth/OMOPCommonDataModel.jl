module OMOPCommonDataModel

import Dates
import DocStringExtensions

abstract type OmopType end

"""
The version of the OMOP Common Data Model (CDM) being implemented.
"""
const CDM_VERSION = v"6.0.0"

# Standardized Vocabularies
# export Concept
# export Vocabulary
# export Domain
# export ConceptClass
# export ConceptRelationship
# export Relationship
# export ConceptSynonym
# export ConceptAncestor
# export SourceToConceptMap
# export DrugStrength
include("vocabularies.jl")

# Standardized Metadata
# export CdmSource
# export Metadata
include("metadata.jl")

# Standardized Clinical Data Tables
export Person
export ObservationPeriod
# export Death
# export VisitOccurence
# export VisitDetail
# export ConditionOccurence
# export DrugExposure
# export ProcedureOccurence
# export DeviceExposure
# export Measurement
# export Note
# export NoteNlp
# export SurveyConduct
# export Observation
# export Specimen
# export FactRelationship
include("clinical-data-tables.jl")

# Standardized Health System Data Tables
# export Location
# export LocationHistory
# export CareSite
# export Provider
include("health-system-data-tables.jl")

# Standardized Health Economics Data Tables
# export PayerPlanPeriod
# export Cost
include("health-economics-data-tables.jl")

# Standardized Derived Elements
# export DrugEra
# export DoseEra
# export ConditionEra
include("derived-elements.jl")

# Results Schema
# export Cohort
# export CohortDefinition
include("results-schema.jl")

end # end module OMOPCommonDataModel
