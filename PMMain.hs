module Main where

import PMParser
import PMEval (optsE, optsP)


--rhs = [ "A(B,C)"
  --    ]
patts = [ "A(x,y)" ]
cases = [ "(tag x) + (tag y)"
        ]
scrutinees = [ "A(B,C)"]

main = do
  --print "playground is here"
  -- mapM_ (\line -> print line >> print (PMParser.parseRhs  optsE    line))
  --   rhs
   mapM_ (\line -> print line >> print (PMParser.parsePatt optsP    line))
     patts
   mapM_ (\line -> print line >> print (PMParser.parseCase optsP optsE line))
    cases
   mapM_ (\line -> print line >> print (PMParser.parseScrutinee optsE line))
     scrutinees
