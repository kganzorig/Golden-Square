# Task Tracker Method Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

# check if a text includes string "#TODO"

ls

text: a string (e.g. "I wondered lonely as a cloud")

split_string : a list of strings (e.g. ["lonely"])

# The method doesn't print anything or have any other side-effects
```

EXAMPLE

verify_string("Have you ever seen the rain?") => ["This is gramatically correct"]
verify_string("Have you ever seen the rain") => ["This text has no punctutation mark at the end"]
verify_string("have you ever seen the rain?") => ["This text has no capital letter at the beginning"]
verify_string("hey there, here I am") => ["This text has no capital letter at the beginning, or punctuation mark at the end"]
verify_string("") => ["No text inputted"]