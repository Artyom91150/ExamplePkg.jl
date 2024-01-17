using ExamplePkg
using Documenter

DocMeta.setdocmeta!(ExamplePkg, :DocTestSetup, :(using ExamplePkg); recursive=true)

makedocs(;
    modules=[ExamplePkg],
    authors="",
    repo="https://github.com/artememelin/ExamplePkg.jl/blob/{commit}{path}#{line}",
    sitename="ExamplePkg.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://artememelin.github.io/ExamplePkg.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/artememelin/ExamplePkg.jl",
    devbranch="master",
)
