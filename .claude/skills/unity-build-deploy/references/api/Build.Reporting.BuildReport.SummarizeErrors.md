<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.BuildReport.SummarizeErrors.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns a string summarizing any errors that occurred during the build

Convenience method for summarizing errors (or exceptions) that occurred during a build into a single line of text. If no error was logged this returns an empty string. If a single error was logged this reports the error messages. Otherwise it reports the number of errors, for example "5 errors".

Note: To examine all errors, warnings and other messages recorded during a build you can enumerating through the build steps and check BuildStep.messages. And to retrieve the count of errors call BuildSummary.totalErrors.
