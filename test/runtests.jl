using OMOPCommonDataModel

using DataFrames
using Documenter
using PrettyPrint
using StructArrays
using Test

@testset "OMOPCommonDataModel.jl" begin
    @testset "Doctests" begin
        doctest(OMOPCommonDataModel)
    end
end
