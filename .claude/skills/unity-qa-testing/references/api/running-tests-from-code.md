<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/test-framework/running-tests-from-code.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Running tests from code

You can invoke Unity Test Framework’s **test runner** from code with the `TestRunnerAPI` class, which lets you control which tests are run and retrieve test data and results.

| **Topic** | **Description** |
| --- | --- |
| **Specify which tests to run** | Compose `Filter` objects for the `TestRunnerAPI` to determine which tests to include in a test run. |
| **Retrieving test results** | Register to receive callbacks from the test runner at the start or finish of an active test run or individual test. |
| **Retrieve the list of tests** | Retrieve the test tree for a given test mode (Edit mode or Play mode) from the test runner. |

## Additional resources

- Run tests in the Test Runner window
- Run tests from the command line
