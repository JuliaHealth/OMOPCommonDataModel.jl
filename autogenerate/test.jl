"""
```julia
get_pathwayanalysis_sql(
  id::Number,
  sourceKey::String,
)
```

Generate pathway analysis sql This method generates the analysis sql for the given design id and specified source. This means that the pathway design must be saved to the database, and a valid source key is provided as the sourceKey parameter. The result is a fully translated and populated query containing the schema parameters and translation based on the specified source.

# Arguments

- `id::Number` - the pathway analysis design id

- `sourceKey::String` - the source used to find the schema and dialect

# Returns

- a String containing the analysis sql

> **NOTE:** For more information on what this function returns, access expanded help by running `help>?get_pathwayanalysis_sql`.
"""
function get_pathwayanalysis_sql(
  id::Number,
  sourceKey::String,
)
  return id
end

