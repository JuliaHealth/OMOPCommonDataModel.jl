@inline function _remove_duplicate_spaces(str)::String
    a = replace(str, isspace => " ")
    while occursin("  ", a)
        a = replace(a, "  " => " ")
    end
    return a
end

@inline function _add_space_before_uppercase_characters(c::Char)::String
    if isuppercase(c)
        return string(" ", lowercase(c))
    else
        return string(c)
    end
end

@inline function _add_space_before_uppercase_characters(str::AbstractString)::String
    original_chars = collect(str)
    new_elements = _add_space_before_uppercase_characters.(original_chars)
    result = join(new_elements)
    return result
end

@inline function spacecase(str)::String
    a = strip(str)
    b = replace(str, "-" => " ")
    c = replace(b,   "_" => " ")
    d = replace(c, isspace => " ")
    e = _add_space_before_uppercase_characters(d)
    f = lowercase(e)
    g = _remove_duplicate_spaces(f)
    h = strip(g)
    return h
end

"""
Convert the input string to snake_case.
"""
@inline function snakecase(str)::String
    a = spacecase(str)
    b = replace(a, isspace => "_")
    return b
end

"""
Convert the input string to PascalCase.
"""
@inline function pascalcase(str)::String
    a = spacecase(str)
    b = titlecase(a; strict = true, wordsep = isspace)
    c = replace(b, isspace => "")
    return c
end
