module Main where

import Development.Shake
import Development.Shake.FilePath

main :: IO ()
main = shakeArgs shakeOptions $ do
  phony "foo/bar" $ do
    liftIO $ print 1
  phony ("baz" </> "quux") $ do
    liftIO $ print 2
