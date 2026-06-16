<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler-logFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Specifies the file to use when writing profiling data.

In addition to specifying a valid file path, you must set both Profiler.enabled and Profiler.enableBinaryLog to `true` in order to save profiling information. Specifying a new valid file path while Profiler.enableBinaryLog is `true` will save profiling information to that file instead. If a `null` or an empty path is passed Profiler.enableBinaryLog will automatically be set to `false`.

When using the relative log file path, the directory on each platform is set to Application.dataPath, apart from WebGL, which uses Application.persistentDataPath.

If the buffer is too small to output the profiler data you will see a message in the debug log "Skipping profile frame. Receiver can not keep up with the amount of data sent". Use Profiler.maxUsedMemory to raise the buffer memory.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Profiling;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        Profiler.logFile = "mylog"; //Also supports passing "myLog.raw"
        Profiler.enableBinaryLog = true;
        Profiler.enabled = true;        // Optional, if more memory is needed for the buffer
        Profiler.maxUsedMemory = 256 * 1024 * 1024;        // ...        // Optional, to close the file when done
        Profiler.enabled = false;
        Profiler.logFile = "";        // To start writing to a new log file
        Profiler.logFile = "myOtherLog";
        Profiler.enabled = true;
        // ...
    }
}
```
