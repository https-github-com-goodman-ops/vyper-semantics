require "../common/lll-abstract-syntax.k"
require "vyper-lll.k"

module VYPER-LLL-POST
    imports VYPER-LLL

 // -----------------------------------------------------------------
    rule $%seq(EXPR, .LLLExps) => EXPR
    rule $%seq(EXPR1, (EXPR2, EXPRS)) => $seq(EXPR1, $%seq(EXPR2, EXPRS))
      requires EXPR1 =/=K $pass

    rule $%seq($pass, (EXPR2, EXPRS)) => $%seq(EXPR2, EXPRS)
    rule $%seq(.LLLExps) => $pass

endmodule 
