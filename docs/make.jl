using Documenter, GalacticOptim

makedocs(
    sitename="GalacticOptim.jl",
    authors="Chris Rackauckas, Vaibhav Kumar Dixit et al.",
    clean=true,
    doctest=false,
    modules=[GalacticOptim],

    format=Documenter.HTML(assets=["assets/favicon.ico"],
                           canonical="https://galacticoptim.sciml.ai/stable/"),

    pages=[
        "GalacticOptim.jl: Unified Global Optimization Package" => "index.md",
        "Tutorials" => [
            "Introduction to GalacticOptim.jl" => "tutorials/intro.md"
        ],
        "Basics" => [
            "OptimizationProblem" => "basics/problem.md",
            "Solver Options" => "basics/solve.md"
        ],
        "Local Optimizers" => [
            "local_optimizers/local_gradient.md",
            "local_optimizers/local_derivative_free.md",
            "local_optimizers/local_hessian.md",
            "local_optimizers/local_hessian_free.md",
        ],
        "Global Optimizers" => [
            "global_optimizers/global.md",
            "global_optimizers/global_constrained.md"
        ]
    ]
)

deploydocs(
    repo="github.com/SciML/GalacticOptim.jl";
    push_preview=true
)
