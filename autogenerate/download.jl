PATHS = []
for info in OMOPCDM_INFO
    if info.version == "5.4"
        for url in info.urls
            destination = joinpath("data", basename(url))
            zpath = Downloads.download(url, destination)
            destination = joinpath("data", splitext(basename(url))[1])
            unzip(zpath, destination)
            push!(PATHS, destination)
        end
    end
end


