import cpp


class NetworkByteSwap extends Expr {
  NetworkByteSwap () {
    exists(MacroInvocation nbswap | 
        nbswap.getMacro().getName().regexpMatch("ntoh(s|l|ll)") and
        this = nbswap.getExpr()
    )
  } 
}

from NetworkByteSwap n
select n , "Network byte swap" 