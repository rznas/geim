<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Compilation.AssemblyBuilder.Build.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Returns

**bool** Returns true if build was started. Returns false if the build was not started due to the editor currently compiling scripts in the Assets folder.

### Description

Starts the build of the assembly.

While building, the small progress icon in the lower right corner of Unity's main window will spin and EditorApplication.isCompiling will return true.

Use AssemblyBuilder.buildStarted and AssemblyBuilder.buildFinished to get notified when the build has started and finished.

Additional resources: AssemblyBuilder.buildStarted, AssemblyBuilder.buildFinished, AssemblyBuilder.status.

```csharp
using System.IO;
using System.Linq;
using UnityEditor;
using UnityEditor.Compilation;
using UnityEngine;public class AssembyBuilderExample
{
    [MenuItem("AssemblyBuilder Example/Build Assembly Async")]
    public static void BuildAssemblyAsync()
    {
        BuildAssembly(false);
    }    [MenuItem("AssemblyBuilder Example/Build Assembly Sync")]
    public static void BuildAssemblySync()
    {
        BuildAssembly(true);
    }    static void BuildAssembly(bool wait)
    {
        var scripts = new[] { "Temp/MyAssembly/MyScript1.cs", "Temp/MyAssembly/MyScript2.cs" };
        var outputAssembly = "Temp/MyAssembly/MyAssembly.dll";
        var assemblyProjectPath = "Assets/MyAssembly.dll";        Directory.CreateDirectory("Temp/MyAssembly");        // Create scripts
        foreach (var scriptPath in scripts)
        {
            var scriptName = Path.GetFileNameWithoutExtension(scriptPath);
            File.WriteAllText(scriptPath, string.Format("using UnityEngine; public class {0} : MonoBehaviour {{ void Start() {{ Debug.Log(\"{0}\"); }} }}", scriptName));
        }        var assemblyBuilder = new AssemblyBuilder(outputAssembly, scripts);        // Exclude a reference to the copy of the assembly in the Assets folder, if any.
        assemblyBuilder.excludeReferences = new string[] { assemblyProjectPath };        // Called on main thread
        assemblyBuilder.buildStarted += delegate(string assemblyPath)
        {
            Debug.LogFormat("Assembly build started for {0}", assemblyPath);
        };        // Called on main thread
        assemblyBuilder.buildFinished += delegate(string assemblyPath, CompilerMessage[] compilerMessages)
        {
            var errorCount = compilerMessages.Count(m => m.type == CompilerMessageType.Error);
            var warningCount = compilerMessages.Count(m => m.type == CompilerMessageType.Warning);            Debug.LogFormat("Assembly build finished for {0}", assemblyPath);
            Debug.LogFormat("Warnings: {0} - Errors: {0}", errorCount, warningCount);            if(errorCount == 0)
            {
                File.Copy(outputAssembly, assemblyProjectPath, true);
                AssetDatabase.ImportAsset(assemblyProjectPath);
            }
        };        // Start build of assembly
        if(!assemblyBuilder.Build())
        {
            Debug.LogErrorFormat("Failed to start build of assembly {0}!", assemblyBuilder.assemblyPath);
            return;
        }        if(wait)
        {
            while(assemblyBuilder.status != AssemblyBuilderStatus.Finished)
                System.Threading.Thread.Sleep(10);
        }
    }
}
```
