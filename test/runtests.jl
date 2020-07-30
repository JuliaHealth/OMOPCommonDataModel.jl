using OMOPCommonDataModel

using DataFrames
using Documenter
using PrettyPrint
using StructArrays
using Test

using OMOPCommonDataModel

using Test


@testset "OMOPCommonDataModel.jl" begin
    @testset "Unit tests" begin
        @testset "version" begin
            @test OMOPCommonDataModel.version() isa VersionNumber
            @test OMOPCommonDataModel.version() > v"0"
            @test OMOPCommonDataModel.cdm_version() isa VersionNumber
            @test OMOPCommonDataModel.cdm_version() > v"0"
            @test OMOPCommonDataModel.cdm_version() == OMOPCommonDataModel.CDM_VERSION
        end
    end
    @testset "Doctests" begin
        doctest(OMOPCommonDataModel)
    end
end
