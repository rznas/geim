<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TestTools.Coverage.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Describes the interface for the code coverage data exposed by mono.

Use one of the following methods to enable coverage: 
1) Use the Coverage.enabled API 
2) Use the Command line argument `-enableCodeCoverage` in batchmode

[Code Coverage](https://en.wikipedia.org/wiki/Code_coverage) is a measure of how much of your code has been executed. It is normally associated with automated tests, but you can gather coverage data in Unity at any time when the Editor is running. It is typically presented as a report that shows the percentage of the code that has been executed. For automated testing the report does not measure the quality of tests, only whether your code is executed by PlayMode and EditMode tests. It is especially useful to check that critical or high risk areas of your code are covered, because they should receive the most rigorous testing.

You can use the [Code Coverage package](https://docs.unity3d.com/Packages/com.unity.testtools.codecoverage@latest) to gather and present code coverage information from your automated tests. Additionally, the Code Coverage package offers a Coverage Recording feature which allows capturing coverage data on demand, for manual testing or when there are no automated tests in the project.

### Static Properties

| Property | Description |
| --- | --- |
| enabled | Enables or disables code coverage. Note that Code Coverage can affect the performance. |

### Static Methods

| Method | Description |
| --- | --- |
| GetSequencePointsFor | Returns the coverage sequence points for the method you specify. See CoveredSequencePoint for more information about the coverage data this method returns. |
| GetStatsFor | Returns the coverage summary for the specified method. See CoveredMethodStats for more information about the coverage statistics returned by this method. |
| GetStatsForAllCoveredMethods | Returns the coverage summary for all methods that have been called since either the Unity process was started or Coverage.ResetAll() has been called. |
| ResetAll | Resets all coverage data. |
| ResetFor | Resets the coverage data for the specified method. |
