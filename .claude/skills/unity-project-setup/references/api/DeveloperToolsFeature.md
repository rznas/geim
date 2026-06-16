<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/DeveloperToolsFeature.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Engineering feature set

The Engineering **feature set** contains packages for integration of C# integrated development environments (IDEs), unit testing, code coverage and performance analysis.

## Getting started

For a list of IDEs Unity supports, refer to Integrated development environment (IDE) support.

To choose which IDE to use with the Unity Editor, open the Preferences window, then go to **External Tools** > **External Script Editor**.

The Unity Test Framework (UTF) lets you test your code in both Edit mode and Play mode, and also on target platforms such as Standalone, Android, and iOS.

To access the Unity Test Framework (UTF) in the Unity Editor, go to **Window** > **General** > **Test Runner**.

The Profile Analyzer aggregates and visualizes frame and marker data from a set of Unity Profiler frames to help you understand their behavior. You can use the Profile Analyzer to compare two sets of data side-by-side, which complements the single frame analysis already available in the Unity Profiler.

To open the Profile Analyzer window, go to **Window** > **Analysis** > **Profile Analyzer**.

Use the Code Coverage package with the Test Runner to gather and present test coverage information. Run your tests with code coverage enabled to check which lines of code execute when the tests run, and whether the tests pass or fail.

To open the Code Coverage window in the Unity Editor, go to **Window** > **Analysis** > **Code Coverage**.

Use the Editor coroutines package to start the execution of [iterator methods](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/keywords/yield) within the Editor, similar to how Unity handles coroutines inside MonoBehaviour **scripts** during runtime.

## Packages

The Engineering feature set contains the following packages:

- Visual Studio Editor
- JetBrains Rider Integration
- Test Framework
- Profile Analyzer
- Code Coverage
- Editor coroutines

## Additional resources

- Integrated development environment (IDE) support
- Unity Test Framework overview
- Profile Analyzer overview
- Code Coverage overview
- Editor coroutines overview
- [Unity Engine forum](https://discussions.unity.com/c/unity-engine/52) (Unity Discussions forum)
