function build_struct()
    
end

function build_field_metadata(df)
    metadata = []
    for row in eachrow(df)
        push!(metadata, Symbol(row.cdmFieldName) => Dict(Symbol.(names(df)) .=> (row |> collect)))
    end
    return Dict(metadata)
end

function build_table_metadata(df)
    return Dict(Symbol(df.cdmTableName[1]) => Dict(Symbol.(names(df)) .=> (df[1, :] |> collect)))
end
