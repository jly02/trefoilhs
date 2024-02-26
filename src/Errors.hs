module Errors where

import Control.Exception ( Exception )
import Data.Typeable ( Typeable )

-- These three exceptions indicate an error which is the user's fault.
newtype ParenthesizedSymbolError = ParenthesizedSymbolError String deriving (Show, Typeable)
instance Exception ParenthesizedSymbolError

newtype AbstractSyntaxError = AbstractSyntaxError String deriving (Show, Typeable)
instance Exception AbstractSyntaxError

newtype RuntimeError = RuntimeError String deriving (Show, Typeable)
instance Exception RuntimeError

-- This exception indicates an error which is our fault. 
newtype InternalError = InternalError String deriving (Show, Typeable)
instance Exception InternalError