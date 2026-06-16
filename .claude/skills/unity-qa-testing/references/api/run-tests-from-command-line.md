<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/test-framework/run-tests-from-command-line.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Run tests from the command line

You can run a test project from the Unity Editor command line. The following example demonstrates this on Windows:

```
Unity.exe -runTests -batchmode -projectPath PATH_TO_YOUR_PROJECT -testResults C:\temp\results.xml -testPlatform PS4
```

**Note**: Use the `-batchmode` option when running tests on the command line to remove the need for manual user inputs. For more information, refer to Unity Editor command-line arguments.

For the full list of Editor command line arguments provided by Unity Test Framework, refer to Command-line reference.

## Additional resources

- Command-line reference
- Unity Editor command-line arguments
