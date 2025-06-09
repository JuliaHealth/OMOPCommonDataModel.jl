function build_header!(body, func)
    func_header = """\n```julia\n"""

    func_header *= build_function_definition(func)

    func_header *= "\n```\n\n"

    return func_header
end

function build_arguments!(body, func)
    if !isnothing(func.args)
        body *= "\n\n# Arguments"
        for arg in func.args
            arg_body = """"""
            arg_body *= "- `$(arg.arg_name)::$(arg.type)` - $(arg.description)"
            body *= "\n\n$(arg_body)"
        end
    end

    return body
end

function build_function_definition(func)
    def = """$(func.func_name)("""
    if !isnothing(func.queries) 
        def *= "\n  query,"
    end
    if !isnothing(func.body)
        def *= "\n  body,"
    end
    if !isnothing(func.args)
        for arg in func.args
            def *= "\n  $(arg.arg_name)::$(arg.type),"
        end
        def *= "\n)"
    else
        def *= "\n)"
    end

    return def
end


function build_footer!(body, func)
    body *= "\n\n> **NOTE:** For more information on what this function returns, access expanded help by running `help>?$(func.func_name)`."

    body *= """\n\"\"\""""

    return body
end

function build_code!(body, func)
    body *= "function $(build_function_definition(func))"
    query_flag = !isnothing(func.queries)
    args_flag = !isnothing(func.args)
    body_flag = !isnothing(func.body)
    if func.method == "GET"
        body = _build_getter_code!(body, func, query_flag, args_flag, body_flag)
    end
    body *= """\nend"""
end

function _build_getter_code!(body, func, query_flag, args_flag, body_flag)
    body *= 
        """\n
            url_stub = "$(func.url[2:end])"
        """
    if args_flag == true 
        args = [a.arg_name for a in func.args]
        arg_dict = """
            args = Dict(
        """
        for arg in args
            arg_dict *= 
            """
                    \"$(arg)\" => $arg,
            """
        end
        arg_dict *= 
        """
            )\n
        """
        body *= arg_dict
        body *= 
        """
            for arg in keys(args)
                url_stub = replace(url_stub, "{" * arg * "}" => args[arg])
            end
        """
    end
    body *=
    """
        HTTP.get(joinpath(BASE_URL, url_stub))
    """

    return body
end
