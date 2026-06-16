<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/test-framework/test-framework-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Testing your code

Write tests for your Edit mode or Play mode code and run them through the Unity Editor’s ****Test Runner**** window, from the command line, or from code. Unity Test Framework integrates a custom version of [NUnit](http://www.nunit.org/), the open-source unit testing library for .NET languages and extends it with Unity-specific capabilities.

As an alternative to NUnit tests, Unity Test Framework provides Unity tests, which can interact with Unity-specific concepts such as frames, the application loop, and domain reload. A Unity test runs as a coroutine in Play mode and in the `EditorApplication.update` callback loop in Edit mode.

Unity tests can yield instructions for the Unity Editor. Once the instruction is complete, the test run continues. You can also `yield return null` in a Unity test to skip a frame and defer an operation until the next iteration of either the `EditorApplication.update` or the per-frame game update loop.

This documentation assumes you’re familiar with NUnit and with fundamental principles of unit testing in C#. If you’re not, refer to [Unit testing C# with NUnit and .NET Core](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-with-nunit) and [Unit testing best practices](https://learn.microsoft.com/en-us/dotnet/core/testing/unit-testing-best-practices) in the Microsoft documentation.

**Note**: Unity Test Framework is a core Unity package and is distributed as part of a Unity Editor installation. Unity Test Framework currently uses a custom version of NUnit based on version 3.5.

| **Topic** | **Description** |
| --- | --- |
| **Get started with Unity Test Framework** | Create your first test assembly and sample Unity Test Framework tests. |
| **Command-line reference** | Run tests and configure test settings from the Unity Editor command line. |
| **Writing tests** | Write Unity tests for Edit mode or Play mode code with the Unity Test Framework C# APIs. |
| **Running tests** | Run Unity tests from the Editor’s **Test Runner** window, from the command line, or directly from code. |
| **Unity Test Framework learning materials** | Follow a practical tutorial with a series of exercises to help you learn the fundamentals of Unity Test Framework. |

## Additional resources

- [QA your code: The new Unity Test Framework (Unite Copenhagen)](https://www.youtube.com/watch?v=wTiF2D0_vKA)
- [Performance Testing Package for Unity Test Framework](https://docs.unity3d.com/Packages/com.unity.test-framework.performance@latest/)
