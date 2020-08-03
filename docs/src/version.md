```@meta
CurrentModule = OMOPCommonDataModel
```

# CDM Version

The following table shows which version of the OMOP Common Data Model (CDM) is
implemented in each version of the `OMOPCommonDataModel.jl` Julia package.

| Common Data Model (CDM) | `OMOPCommonDataModel.jl` |
| ----------------------- | ------------------------ |
| 5.3.1                   | 0.1.0                    |

In order to see the current CDM version, use the
`OMOPCommonDataModel.cdm_version` function:
```julia
julia> OMOPCommonDataModel.cdm_version() # prints the current CDM version
```

In order to see the current `OMOPCommonDataModel.jl` version, use the
`OMOPCommonDataModel.version` function:

```julia
julia> OMOPCommonDataModel.version() # prints the current `OMOPCommonDataModel.jl` version
```

To see all versions of the Common Data Model, go to the
[CommonDataModel release page](https://github.com/OHDSI/CommonDataModel/releases).

To see all versions of `OMOPCommonDataModel.jl`, go to the
[`OMOPCommonDataModel.jl` release page](https://github.com/JuliaHealth/OMOPCommonDataModel.jl/releases).
