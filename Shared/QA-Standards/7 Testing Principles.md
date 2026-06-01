
# 1. Testing Shows the Presence of Defects, Not Their Absence

Testing can prove that bugs exist, but it can never guarantee the application is completely bug-free.

Even if all test cases pass, hidden defects may still exist.

## Example
A login feature may pass all tested scenarios, but a rare edge case under slow internet might still fail.

---
# 2. Exhaustive Testing Is Impossible

It is impossible to test every input, combination, device, scenario, and condition.

QA must prioritize testing based on:
- Risk
- Business impact
- Frequency of use
- Critical functionality

## Example
Testing every possible password combination is unrealistic.

---
# 3. Early Testing Saves Time and Cost

Testing should start as early as possible during requirement and design phases.

Finding defects early is much cheaper than discovering them after release.

### Example
A missing business rule discovered during requirement review is easier to fix than after development and deployment.

---
# 4. Defects Cluster Together

A small number of modules usually contain most of the defects.

This is related to the Pareto Principle (80/20 rule).

## Example
A payment module may continuously generate many bugs because it contains complex business logic.

QA should focus more attention on risky areas.

---
# 5. Beware of the Pesticide Paradox

Running the same test cases repeatedly eventually stops finding new defects.

QA should continuously:
- Add new scenarios
- Explore edge cases
- Update test cases
- Perform exploratory testing

## Example
If login is always tested using the same valid accounts, hidden issues may never appear.

----
# 6. Testing Depends on Context

Testing strategy changes depending on the application type.

Different systems require different approaches.

## Example
Testing a banking system is very different from testing a gaming app:
- Banking focuses heavily on security and accuracy.
- Gaming focuses more on performance and user experience.

---
# 7. Absence-of-Errors Fallacy

Even if the software has very few bugs, the product can still fail if it does not meet user or business needs.

A technically “bug-free” product can still be useless.

## Example
A restaurant ordering app may work perfectly technically, but if users cannot easily place orders, the product still fails.