Feature: Analysis of multi-module projects

  As a SonarQube user
  I want the language plugin to play nice with multi-module setups
  In order to be able to use tools like bootstrappers (which create such multi-module setups)
      deal with big projects having complex build system with different defines / include paths
      for different parts for the code base etc.

  #
  # Multi module structures consist of a root project having N modules
  # and no files or directories. Modules may hold file, directories
  # and other modules (i.e. may be nested). Configuration properties
  # are propagated to the children and can be overwritten by
  # them.
  # When looking up reports using relative paths, the plugin
  # tries first the module, and then falls back to the projects base
  # dir. Same procedure applies when looking up resources using
  # relative paths (??)
  #

  # @wip
  # Scenario: Multi-module project with reports addressing all modules
  #   # TODO: 'simple' mode of xunit is brocken in this scenario
  #   #       dependencies are brocken too

  #   In many multi-module project is it convenient to run the code
  #   checkers once over all modules and have a report spanning the
  #   whole project some where at the root of the project.

  #   GIVEN the project "multimodule_project"
  #   WHEN I run "sonar-runner"
  #   THEN the analysis finishes successfully
  #       AND the analysis log contains no error/warning messages except those matching:
  #           """
  #           .*WARN.*
  #           """
  #       AND the following metrics have following values:
  #            | metric                   | value |
  #            | violations               | 3     |
  #            # coverage statistics
  #            | coverage                 | 87.5  |
  #            | line_coverage            | 100   |
  #            | branch_coverage          | 50    |
  #            # design/tangles
  #            #| package_tangle_index     | 66.7  |
  #            #| package_tangles          | 1     |
  #            # test execution statistics
  #            | test_success_density     | 100   |
  #            | test_failures            | 0     |
  #            | test_errors              | 0     |
  #            #| tests                    | 1     |


  # Scenario: Multi-module project with reports per module
  #   GIVEN the project "multimodule_project_2"
  #   WHEN I run "sonar-runner"
  #   THEN the analysis finishes successfully
  #       AND the analysis log contains no error/warning messages except those matching:
  #           """
  #           .*WARN.*
  #           """
  #       AND the following metrics have following values:
  #            | metric                   | value |
  #            #| violations               | 3     |
  #            # test execution statistics
  #            | test_success_density     | 100   |
  #            | test_failures            | 0     |
  #            | test_errors              | 0     |
  #            #| tests                    | 1     |
