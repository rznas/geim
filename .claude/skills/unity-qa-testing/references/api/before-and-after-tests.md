<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/test-framework/before-and-after-tests.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Performing actions before and after tests

Write reliable tests by performing the appropriate pre-test setup and post-test cleanup work to ensure your tests run in the right state. Unity Test Framework has a range of APIs that allow you to perform work at defined stages before and after a test run.

| **Topic** | **Description** |
| --- | --- |
| **Setting up and tearing down tests** | Use Unity Test Framework APIs for test setup and tear down. |
| **Performing actions before setup or after tear down** | Use the IOuterUnityTestAction API to do work outside the test before setup and after tear down. |
| **Setting up and cleaning up at build time** | Make changes to Unity or the file system before building tests and then clean up these changes after the test run. |
| **Execution order of test actions** | Understand the order in which test actions run relative to one another. |

## Additional resources

- Setup and teardown
- Setup and cleanup at build time
