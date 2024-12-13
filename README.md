# Silent Failure: Setting Non-Existent Instance Variables in Ruby

This repository demonstrates a subtle bug in Ruby related to setting non-existent instance variables.  The issue is that assigning a value to an instance variable that hasn't been previously defined doesn't raise an exception. This can lead to hard-to-debug issues where the program runs without errors, but the state is incorrect.

The `bug.rb` file showcases the problem. The solution demonstrates a safe approach that avoids this pitfall.
