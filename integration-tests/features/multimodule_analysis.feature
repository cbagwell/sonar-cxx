Feature: Analysis of multi-module projects

  As a ??
  I want to ??
  In order to ??

  Scenario: Multi-module project with reports addressing all modules

    In many multi-module project is it convenient to run the code
    checkers once over all modules and have a report spanning the
    whole project some where at the root of the project.

    GIVEN the project "multimodule_project"
    WHEN I run "sonar-runner -X"
    THEN the analysis finishes successfully
        AND the analysis log contains no error/warning messages except those matching:
            """
            .*WARN.*
            """
        AND the following metrics have following values:
             | metric                   | value |
             | violations               | 20    |
