```@meta
CurrentModule = OMOPCommonDataModel
```

# Examples

```jldoctest
julia> using OMOPCommonDataModel

julia> using DataFrames, PrettyPrint, StructArrays, Tables

julia> jack = Person(person_id = 1, gender_concept_id = 12, year_of_birth = 1900, race_concept_id = 21, ethnicity_concept_id = 31, gender_source_concept_id = 42, race_source_concept_id = 51, ethnicity_source_concept_id = 61)
Person(1, 12, 1900, missing, missing, missing, 21, 31, missing, missing, missing, missing, missing, 42, missing, 51, missing, 61)

julia> jill = Person(person_id = 2, gender_concept_id = 11, year_of_birth = 1900, month_of_birth = 1, day_of_birth = 1, race_concept_id = 22, ethnicity_concept_id = 32, gender_source_concept_id = 41, race_source_concept_id = 52, ethnicity_source_concept_id = 62)
Person(2, 11, 1900, 1, 1, missing, 22, 32, missing, missing, missing, missing, missing, 41, missing, 52, missing, 62)

julia> pprint(jack)
Person(
  person_id=1,
  gender_concept_id=12,
  year_of_birth=1900,
  month_of_birth=Missing(),
  day_of_birth=Missing(),
  birth_datetime=Missing(),
  race_concept_id=21,
  ethnicity_concept_id=31,
  location_id=Missing(),
  provider_id=Missing(),
  care_site_id=Missing(),
  person_source_value=Missing(),
  gender_source_value=Missing(),
  gender_source_concept_id=42,
  race_source_value=Missing(),
  race_source_concept_id=51,
  ethnicity_source_value=Missing(),
  ethnicity_source_concept_id=61,
)

julia> pprint(jill)
Person(
  person_id=2,
  gender_concept_id=11,
  year_of_birth=1900,
  month_of_birth=1,
  day_of_birth=1,
  birth_datetime=Missing(),
  race_concept_id=22,
  ethnicity_concept_id=32,
  location_id=Missing(),
  provider_id=Missing(),
  care_site_id=Missing(),
  person_source_value=Missing(),
  gender_source_value=Missing(),
  gender_source_concept_id=41,
  race_source_value=Missing(),
  race_source_concept_id=52,
  ethnicity_source_value=Missing(),
  ethnicity_source_concept_id=62,
)

julia> person_table = StructArray(Person[jack, jill])
2-element StructArray(::Vector{Int64}, ::Vector{Int64}, ::Vector{Int64}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, Dates.DateTime}}, ::Vector{Int64}, ::Vector{Int64}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, String}}, ::Vector{Union{Missing, String}}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, String}}, ::Vector{Union{Missing, Int64}}, ::Vector{Union{Missing, String}}, ::Vector{Union{Missing, Int64}}) with eltype Person:
 Person(1, 12, 1900, missing, missing, missing, 21, 31, missing, missing, missing, missing, missing, 42, missing, 51, missing, 61)
 Person(2, 11, 1900, 1, 1, missing, 22, 32, missing, missing, missing, missing, missing, 41, missing, 52, missing, 62)

julia> person_table_df = DataFrame(person_table);

julia> @show(person_table_df);
person_table_df = 2×18 DataFrame
│ Row │ person_id │ gender_concept_id │ year_of_birth │ month_of_birth │ day_of_birth │ birth_datetime │ race_concept_id │ ethnicity_concept_id │ location_id │ provider_id │ care_site_id │ person_source_value │ gender_source_value │ gender_source_concept_id │ race_source_value │ race_source_concept_id │ ethnicity_source_value │ ethnicity_source_concept_id │
│     │ Int64     │ Int64             │ Int64         │ Int64?         │ Int64?       │ DateTime…?     │ Int64           │ Int64                │ Int64?      │ Int64?      │ Int64?       │ String?             │ String?             │ Union{Missing, Int64}    │ String?           │ Union{Missing, Int64}  │ Union{Missing, String} │ Union{Missing, Int64}       │
├─────┼───────────┼───────────────────┼───────────────┼────────────────┼──────────────┼────────────────┼─────────────────┼──────────────────────┼─────────────┼─────────────┼──────────────┼─────────────────────┼─────────────────────┼──────────────────────────┼───────────────────┼────────────────────────┼────────────────────────┼─────────────────────────────┤
│ 1   │ 1         │ 12                │ 1900          │ missing        │ missing      │ missing        │ 21              │ 31                   │ missing     │ missing     │ missing      │ missing             │ missing             │ 42                       │ missing           │ 51                     │ missing                │ 61                          │
│ 2   │ 2         │ 11                │ 1900          │ 1              │ 1            │ missing        │ 22              │ 32                   │ missing     │ missing     │ missing      │ missing             │ missing             │ 41                       │ missing           │ 52                     │ missing                │ 62                          │
```
