using KineticTransport
using Documenter

DocMeta.setdocmeta!(KineticTransport, :DocTestSetup, :(using KineticTransport); recursive=true)

makedocs(;
    modules=[KineticTransport],
    authors="Roman Kostin <dmitrievroma5504@gmail.com> and contributors",
    sitename="KineticTransport.jl",
    format=Documenter.HTML(;
        canonical="https://romka-star.github.io/KineticTransport.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/romka-star/KineticTransport.jl",
    devbranch="master",
)
