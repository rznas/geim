<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-debugging-development.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Debug Web builds in development

Inspect logs, use **development builds**, and configure exception support to diagnose problems during development.

## Debug your build in a browser’s JavaScript console

The Unity Web platform doesn’t have access to your file system, so it doesn’t write a log file like other platforms. However, it does write all logging information such as `Debug.Log`, `Console.WriteLine` or Unity’s internal logging to the browser’s JavaScript console.

To open the JavaScript console:

| **OS** | **Browser** | **Instructions** |
| --- | --- | --- |
| Windows | Firefox | Press **Ctrl**+**Shift**+**K**. |
| Windows | Chrome | Press **Ctrl**+**Shift**+**J**. |
| Windows | Microsoft Edge | Press **F12**. |
| Windows | Internet Explorer | Press **F12**. |
| Mac | Firefox | Press **Command**+**Option**+**K**. |
| Mac | Chrome | Press **Command**+**Option**+**J**. |
| Mac | Safari | Go to **Preferences** > **Advanced** > **Develop**.   Press **Command**+**Option**+**C**. |

## Create a development build to debug

You might want to make a development build in Unity to debug your code. To make a development build:

1. Open the Build Profiles window.
2. Enable **Development Build**.

Development builds allow you to connect the profiler. Unity doesn’t [minify](https://en.wikipedia.org/wiki/Minification_%28programming%29) the code, so the emitted JavaScript code still contains human-readable, [C++-mangled](https://en.wikipedia.org/wiki/Name_mangling#Name_mangling_in_C.2B.2B), function names.

The browser uses these to display stack traces if you run into a browser error, when using `Debug.LogError`, or when an exception occurs and exception support is disabled. Unlike the managed stack traces that occur when you have full exception support, these stack traces have mangled names, and contain managed code and the internal Unity Engine code.

## Exception support

Web has different levels of exception support, but by default, Unity Web only supports explicitly thrown exceptions. For more information, refer to Web Player settings. You can enable **Full** exception support, which emits additional checks in the IL2CPP-generated code, to catch access to null references and out-of-bounds array elements in your managed code. These additional checks significantly impact performance and increase code size and load times, so you must only use it for debugging.

Full exception support also emits function names to generate stack traces for your managed code. For this reason, stack traces appear in the console for uncaught exceptions and for `Debug.Log` statements. Use `System.Environment.StackTrace` to get a stack trace string.

## Additional resources

- Debug and troubleshoot Web builds
- Debug production Web builds
- Troubleshoot common Web build errors
