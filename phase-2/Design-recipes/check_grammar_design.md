# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

check_grammar(text, type): a string (e.g. "hello there") and a string with three options ("full stop", "question mark", "exclamation mark")
output: a string (e.g. "Hello there.")


The method does not print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

#tests
check_grammar("hello my name is Sameera", "full stop") => "Hello my name is Sameera."
check_grammar("encanto tells the tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia in a magical house. It’s set in a vibrant town, in a wondrous, charmed place called an Encanto", "exclamation mark") => "Encanto tells the tale of an extraordinary family, the Madrigals, who live hidden in the mountains of Colombia in a magical house. It’s set in a vibrant town, in a wondrous, charmed place called an Encanto!"
check_grammar("what is your name", "question mark") => "What is your name?"
check_grammar(nil, nil) => throws an error


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


