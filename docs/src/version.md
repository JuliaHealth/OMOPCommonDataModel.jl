```@meta
CurrentModule = OMOPCommonDataModel
```

# CDM Version

The following table shows which version of the OMOP Common Data Model (CDM) is
implemented in each version of the `OMOPCommonDataModel.jl` Julia package.

| Common Data Model (CDM) | `OMOPCommonDataModel.jl` |
| ----------------------- | ------------------------ |
| 5.1.3                   | 0.1.0                    |

In order to see the current CDM version, use the
`OMOPCommonDataModel.cdm_version` function:
```jldoctest
julia> using OMOPCommonDataModel

julia> OMOPCommonDataModel.cdm_version()
v"5.1.3"
```

In order to see the current `OMOPCommonDataModel.jl` version, use the
`OMOPCommonDataModel.cdm_version` function:

```jldoctest
julia> using OMOPCommonDataModel

julia> OMOPCommonDataModel.version()
v"0.1.0"
```

To see all versions of the Common Data Model, go to the
[CommonDataModel release page](https://github.com/OHDSI/CommonDataModel/releases).

To see all versions of `OMOPCommonDataModel.jl`, go to the
[`OMOPCommonDataModel.jl` release page](https://github.com/JuliaHealth/OMOPCommonDataModel.jl/releases).
