module Tests

using Reexport
using Test

export run_all_tests

include("BitwiseTicTacToe.jl")
@reexport using .BitwiseTicTacToe

include("UtilTests.jl")
@reexport using .UtilTests

include("TestEnvs.jl")
@reexport using .TestEnvs

include("MctsTests.jl")
@reexport using .MctsTests

function run_all_tests()
    @testset "RLZero tests" begin
        run_util_tests()
        run_mcts_tests()
    end
    return nothing
end

end
