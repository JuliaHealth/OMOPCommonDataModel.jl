```@meta
CurrentModule = OMOPCommonDataModel
```

# Examples

```jldoctest
julia> using OMOPCommonDataModel

julia> using PrettyPrint

julia> using StructArrays

julia> jack = Person(person_id = 1, gender_concept_id = 12, year_of_birth = 1900, race_concept_id = 21, ethnicity_concept_id = 31, gender_source_concept_id = 42, race_source_concept_id = 51, ethnicity_source_concept_id = 61)
Person(1, 12, 1900, missing, missing, missing, missing, 21, 31, missing, missing, missing, missing, missing, 42, missing, 51, missing, 61)

julia> jill = Person(person_id = 2, gender_concept_id = 11, year_of_birth = 1900, month_of_birth = 1, day_of_birth = 1, race_concept_id = 22, ethnicity_concept_id = 32, gender_source_concept_id = 41, race_source_concept_id = 52, ethnicity_source_concept_id = 62)
Person(2, 11, 1900, 1, 1, missing, missing, 22, 32, missing, missing, missing, missing, missing, 41, missing, 52, missing, 62)

julia> pprint(jack)
Person(
  person_id=1,
  gender_concept_id=12,
  year_of_birth=1900,
  month_of_birth=missing,
  day_of_birth=missing,
  birth_datetime=missing,
  death_datetime=missing,
  race_concept_id=21,
  ethnicity_concept_id=31,
  location_id=missing,
  provider_id=missing,
  care_site_id=missing,
  person_source_value=missing,
  gender_source_value=missing,
  gender_source_concept_id=42,
  race_source_value=missing,
  race_source_concept_id=51,
  ethnicity_source_value=missing,
  ethnicity_source_concept_id=61,
)
julia> pprint(jill)
Person(
  person_id=2,
  gender_concept_id=11,
  year_of_birth=1900,
  month_of_birth=1,
  day_of_birth=1,
  birth_datetime=missing,
  death_datetime=missing,
  race_concept_id=22,
  ethnicity_concept_id=32,
  location_id=missing,
  provider_id=missing,
  care_site_id=missing,
  person_source_value=missing,
  gender_source_value=missing,
  gender_source_concept_id=41,
  race_source_value=missing,
  race_source_concept_id=52,
  ethnicity_source_value=missing,
  ethnicity_source_concept_id=62,
)
julia> person_table = StructArray([jack, jill])
2-element StructArray(::Vector{Int64}, ::Vector{Int64}, ::Vector{Int64}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, Dates.DateTime}}, ::Vector{Union{Missing, Dates.DateTime}}, ::Vector{Int64}, ::Vector{Int64}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, String}}, ::Vector{Union{Missing, String}}, ::Vector{Int64}, ::Vector{Union{Missing, String}}, ::Vector{Int64}, ::Vector{Union{Missing, String}}, ::Vector{Int64}) with eltype Person:
 Person(1, 12, 1900, missing, missing, missing, missing, 21, 31, missing, missing, missing, missing, missing, 42, missing, 51, missing, 61)
 Person(2, 11, 1900, 1, 1, missing, missing, 22, 32, missing, missing, missing, missing, missing, 41, missing, 52, missing, 62)
```
