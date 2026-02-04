using OMOPCommonDataModel
using Documenter

makedocs(;
    modules=[OMOPCommonDataModel],
    authors="Dilum Aluthge, Brown Center for Biomedical Informatics, JuliaHealth, and contributors",
    repo="https://github.com/JuliaHealth/OMOPCommonDataModel.jl/blob/{commit}{path}#L{line}",
    sitename="OMOPCommonDataModel.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaHealth.github.io/OMOPCommonDataModel.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "CDM Version" => "version.md",
        "Examples" => "examples.md",
        "API" => "api.md",
        "Auto-Generation" => "generate.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaHealth/OMOPCommonDataModel.jl",
)
