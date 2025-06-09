function get_func_name(e) 
    elems = splitpath(replace(e.url, "-" => ""))
    indxs = findall(x -> occursin("{", x), elems)

    front = elems[Not(indxs)][2:end]
    front = join(lowercase.(front), "_")

    return lowercase(e.http) * "_" * front
end

function get_arguments(e)
    args = []
    if isempty(e.inputs.PATH)
        return nothing
    else
        for input in e.inputs.PATH
            type = input.typeValue

            if hasproperty(type, :typeValue)
                type = type.typeValue
            else
                type = type.type
            end

            arg = ARGUMENT_DEF(
                arg_name = input.name,
                type = API_TYPE_DICT[type],
                description = isnothing(input.comment) ? "" : input.comment
            )
            push!(args, arg)
        end

        return args

    end
end

function get_queries(e)
    queries = []
    if isempty(e.inputs.QUERY)
        return nothing
    else
        for input in e.inputs.QUERY
            type = input.typeValue

            if hasproperty(type, :typeValue)
                type = type.typeValue
            else
                type = type.type
            end

            query = QUERY_DEF(
                query_name = input.name,
                type = API_TYPE_DICT[type],
                description = isnothing(input.comment) ? "" : input.comment
            )
            push!(queries, query)
        end
        return queries
    end
end

function get_output(e)
    output = []
    if isempty(e.output)
        return nothing
    else
        return e.output
    end
end

function get_body(e)
    body = e.inputs.BODY
    if isempty(body)
        return nothing
    else
        return body 
    end
end

