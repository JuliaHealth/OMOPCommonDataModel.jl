using OMOPCommonDataModel

using DataFrames
using Documenter
using PrettyPrint
using StructArrays
using Test

@testset "OMOPCommonDataModel.jl" begin
    @testset "Unit tests" begin
        @testset "version() and cdm_version()" begin
            @test OMOPCommonDataModel.version() isa VersionNumber
            @test OMOPCommonDataModel.version() > v"0"
            @test OMOPCommonDataModel.cdm_version() isa VersionNumber
            @test OMOPCommonDataModel.cdm_version() > v"0"
            @test OMOPCommonDataModel.cdm_version() == OMOPCommonDataModel.CDM_VERSION
        end
        @testset "String casing" begin
            @testset "pascalcase" begin
                @test OMOPCommonDataModel.Generate.pascalcase("HelloWorld") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("helloWorld") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("Hello World") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("Hello_World") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("HelloWorld") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("hello world") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("hello_world") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("hello_World") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("Hello_World") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("Hello_world") == "HelloWorld"
                @test OMOPCommonDataModel.Generate.pascalcase("hello-world") == "HelloWorld"
            end
            @testset "snakecase" begin
                @test OMOPCommonDataModel.Generate.snakecase("HelloWorld") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("helloWorld") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("Hello World") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("Hello_World") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("HelloWorld") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("hello world") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("hello_world") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("hello_World") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("Hello_World") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("Hello_world") == "hello_world"
                @test OMOPCommonDataModel.Generate.snakecase("hello-world") == "hello_world"
            end
            @testset "spacecase" begin
                @test OMOPCommonDataModel.Generate.spacecase("HelloWorld") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("helloWorld") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("Hello World") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("Hello_World") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("HelloWorld") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("hello world") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("hello_world") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("hello_World") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("Hello_World") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("Hello_world") == "hello world"
                @test OMOPCommonDataModel.Generate.spacecase("hello-world") == "hello world"
            end
        end
        @testset "String casing helper function" begin
            @testset "_remove_duplicate_spaces" begin
                @test OMOPCommonDataModel.Generate._remove_duplicate_spaces("foo    \n    \t                      bar") == "foo bar"
            end
            @testset "" begin
            end
        end
        @testset "Generate helper functions" begin
            @testset "_generate_export_statement" begin
                @test OMOPCommonDataModel.Generate._generate_export_statement("Foo", true) == "export Foo"
                @test OMOPCommonDataModel.Generate._generate_export_statement("Foo", false) == ""
            end
            @testset "_omop_type_to_julia_partialtype" begin
                @test_throws ArgumentError OMOPCommonDataModel.Generate._omop_type_to_julia_partialtype("foo_bar")
            end
            @testset "_generate_full_fieldtype" begin
                @test OMOPCommonDataModel.Generate._generate_full_fieldtype("SomeType", "NULL"; make_all_fields_optional = true) == "Union{SomeType, Missing} = missing"
                @test OMOPCommonDataModel.Generate._generate_full_fieldtype("SomeType", "NOT NULL"; make_all_fields_optional = true) == "Union{SomeType, Missing} = missing"
                @test OMOPCommonDataModel.Generate._generate_full_fieldtype("SomeType", "NULL"; make_all_fields_optional = false) == "Union{SomeType, Missing} = missing"
                @test OMOPCommonDataModel.Generate._generate_full_fieldtype("SomeType", "NOT NULL"; make_all_fields_optional = false) == "SomeType"
                @test_throws ArgumentError OMOPCommonDataModel.Generate._generate_full_fieldtype("SomeType", "FOO BAR"; make_all_fields_optional = false)
            end
        end
        @testset "Generate.generate()" begin
            generate_temp_dir = mktempdir()
            atexit(() -> rm(generate_temp_dir; force = true, recursive = true))
            generate_output_file = joinpath(abspath(generate_temp_dir), "autogenerated.jl")
            string_cases = [
                identity,
                OMOPCommonDataModel.Generate.snakecase,
                OMOPCommonDataModel.Generate.pascalcase,
            ]
            for case in string_cases
                rm(generate_output_file; force = true, recursive = true)
                @test !ispath(generate_output_file)
                @test !isfile(generate_output_file)
                OMOPCommonDataModel.Generate.generate(; string_casing = case,
                                                        output_file = generate_output_file)
                @test ispath(generate_output_file)
                @test isfile(generate_output_file)
                generate_output_file_contents = read(generate_output_file, String)
                @test length(strip(generate_output_file_contents)) > 1_000
                # make sure that the generated file is parseable as Julia code
                @test_nowarn Base.parse_input_line(String(generate_output_file_contents))
                @test Base.parse_input_line(String(generate_output_file_contents)) isa Expr
            end
            rm(generate_temp_dir; force = true, recursive = true)
        end
    end
    @testset "Doctests" begin
        doctest(OMOPCommonDataModel)
    end
end
