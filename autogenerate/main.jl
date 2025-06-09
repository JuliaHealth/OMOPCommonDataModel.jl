using CSV
using DataFrames
using Downloads
using ZipFile

includet("utils.jl")
includet("constants.jl")
include("download.jl")
includet("builders.jl")

# OMOP CDM 5.4 VERSIONS
OMOPCDM_5_4_INFO = Dict()
for path in PATHS
    subdir = readdir(path)[1]
    version = splitpath(path)[2]

    field_df = CSV.read(joinpath(path, subdir, "inst/csv/OMOP_CDMv5.4_Field_Level.csv"), DataFrame)
    table_df = CSV.read(joinpath(path, subdir, "inst/csv/OMOP_CDMv5.4_Table_Level.csv"), DataFrame)

    push!(OMOPCDM_5_4_INFO, version => (fields = field_df, tables = table_df))
end

OMOPCDM_VERSION_INFO = Dict()
for version in keys(OMOPCDM_5_4_INFO)
    version_fields = Dict()
    version_tables = Dict()
    for t in unique(OMOPCDM_5_4_INFO[version].tables.cdmTableName)
        fields = filter(x -> x.cdmTableName == t, OMOPCDM_5_4_INFO[version].fields)
        table = filter(x -> x.cdmTableName == t, OMOPCDM_5_4_INFO[version].tables)

        field_metadata = build_field_metadata(fields)
        table_metadata = build_table_metadata(table)

        push!(version_fields, field_metadata...)
        push!(version_tables, table_metadata...)
    end
    push!(OMOPCDM_VERSION_INFO, version => Dict(:fields => version_fields, :tables => version_tables))
end
