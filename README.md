# Inconsistent IsEmpty Behavior in VBScript

This repository demonstrates an uncommon bug related to the `IsEmpty` function in VBScript when dealing with Variants.  The issue arises from the inconsistent behavior of `IsEmpty` when a Variant is empty due to a lack of explicit assignment rather than an explicit assignment of an empty value like `""` or `0`.

## Bug Description

VBScript's `IsEmpty` function isn't always reliable in detecting variables that haven't been explicitly assigned a value.  This can lead to unexpected results, particularly in calculations or comparisons.

## Reproduction

The `bug.vbs` script demonstrates the issue.  Observe how the behavior changes depending on how a variant is (not) initialized.

## Solution

The `bugSolution.vbs` script provides a solution by explicitly checking for both `IsEmpty` and `IsNull`. This ensures a more robust approach for determining if a variable has a valid value.

## Note

This bug highlights the importance of explicit variable initialization in VBScript to avoid potential pitfalls with the `IsEmpty` function.  Always initialize your variables with an explicit value, even if that value is `0` or "", whenever possible.