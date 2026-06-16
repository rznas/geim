<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Profiling.Profiler-enableBinaryLog.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Enables the logging of profiling data to a file.

When enabled, the Unity player saves profiling data to the file specified in the Profiler.logFile file. The player automatically assigns the file extension, “.raw” to this log file. You can load this file in the Unity Editor using the Profiler window to view the data.

You must also set Profiler.enabled to `true`. If the buffer is too small to output the profiler data you will see a message in the debug log "Skipping profile frame. Receiver can not keep up with the amount of data sent". Use Profiler.maxUsedMemory to raise the buffer memory.

**Note:** In the following example, on the WebGL platform, the log file is outputted to a path like the following: `/idbfs/some-hash/profiler.raw`. To find this file, use your browser's developer tools. You can also use `File.Open` with the same path that you used to load the data, and use UnityWebRequest.Post to send it to a web server.

```csharp
using UnityEngine;
using System.Collections;
using UnityEngine.Profiling;
using System.IO;public class ExampleClass : MonoBehaviour
{
    void Start()
    {
        StartCoroutine(RunProfiler());
    }    IEnumerator RunProfiler()
    {
        // Specify the profiler output file
        Profiler.logFile = Path.Join(Application.persistentDataPath, "mylog.raw");
        Profiler.enableBinaryLog = true;
        // Start profiler
        Profiler.enabled = true;
        // Optional, if more memory is needed for the buffer
        Profiler.maxUsedMemory = 256 * 1024 * 1024;        // Run profiling for 5 seconds
        yield return new WaitForSeconds(5.0f);        // Stop profiler
        Profiler.enabled = false;
        // It is important to change the log file so it can be opened
        Profiler.logFile = "";
    }
}
```
