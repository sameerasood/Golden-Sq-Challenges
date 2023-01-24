# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

The user can keep track of their tasks. They want to check if a text inlcudes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

to_do(text): a string (e.g. "#TODO Order Grocery")
output: boolean value (e.g. true)


The method does not print anything or have any other side-effects
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

#tests

to_do("#TODO Schedule a meeting with GP") => true
to_do("Invite kids to party") => false
to_do("") => "no task entered" throws an error


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
