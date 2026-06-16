<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/uwp-defines.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# UWP scripting symbols

Unity has a range of built-in scripting symbols which represent options that you can use in your **scripts** to selectively include or exclude portions of code from compilation. For more information on conditional compilation, refer to Conditional compilation.

**Note:** You can also refer to scripting symbols can as define symbols, preprocessor defines, or defines.

Unity automatically defines these scripting symbols for Universal Windows Platform (UWP):

| **Scripting symbol** | **Description** |
| --- | --- |
| `UNITY_WINRT` | Defined on all scripts. |
| `UNITY_WSA` | Defined on all scripts. |
| `UNITY_WINRT_10_0` | Defined on all scripts. |
| `UNITY_WSA_10_0` | Defined on all scripts. |
| `ENABLE_IL2CPP` | Defined on all scripts when using **IL2CPP** **scripting backend**. |
| `WINDOWS_UWP` | Defined on all scripts when building for UWP. |
| `ENABLE_WINMD_SUPPORT` | Defined on all scripts when building for UWP. |

## Additional resources

- Conditional compilation
- Custom scripting symbols
- [Microsoft documentation on C# preprocessor directives](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/preprocessor-directives)
