module Reverse where

reverseWords :: String -> String
reverseWords = undefined

eatWordCharacters until you come across a sting of whitespaceCharacters.

-- | 'words' breaks a string up into a list of words, which were delimited
-- by white space.
words                   :: String -> [String]
{-# NOINLINE [1] words #-}
words s                 =  case dropWhile {-partain:Char.-}isSpace s of
                                "" -> []
                                s' -> w : words s''
                                      where (w, s'') =
                                             break {-partain:Char.-}isSpace s'
