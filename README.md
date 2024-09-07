# OMOPCommonDataModel

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://JuliaHealth.github.io/OMOPCommonDataModel.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://JuliaHealth.github.io/OMOPCommonDataModel.jl/dev)
[![Build Status](https://github.com/JuliaHealth/OMOPCommonDataModel.jl/workflows/CI/badge.svg)](https://github.com/JuliaHealth/OMOPCommonDataModel.jl/actions)
[![Coverage](https://codecov.io/gh/JuliaHealth/OMOPCommonDataModel.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/JuliaHealth/OMOPCommonDataModel.jl)

Pure Julia implementation of the [OMOP Common Data Model (CDM)](https://github.com/OHDSI/CommonDataModel).

Please see the [documentation](https://JuliaHealth.github.io/OMOPCommonDataModel.jl/stable).

OMOP CDM versions 5.4.1 and 5.3.1 are supported.
The value for `OMOP_CDM_VERSION` is read from the Julia environment, with `v5.4.1` being the default value.

## Example
```julia
using CSV, DataFrames, OMOPCommonDataModel

CSV.File("person.csv",types=[Person.types...]) |> DataFrame
```
