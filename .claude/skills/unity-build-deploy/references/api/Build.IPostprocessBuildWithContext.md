<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.IPostprocessBuildWithContext.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Implement this interface to execute code immediately after the Player build or AssetBundle build process is completed.

This is useful for tasks that need to run after a build completes, even if the build failed or was cancelled. For example, you might want to clean up assets, generate analytics or reports, or customize build outputs. The postprocess callback runs whether the build succeeds, fails, or is cancelled, as long as the corresponding IPreprocessBuildWithContext callback ran. It's only skipped if early validation prevents the build from starting.

As a final step of a Player build or AssetBundle build, Unity uses the IOrderedCallback.callbackOrder property on each implementation to determine the order in which to invoke the callbacks.

The main difference between this interface and IPostprocessBuildWithReport or IPostprocessBuild is that this callback gets called on AssetBundle builds and Player builds, and it is called even for cancelled and failed builds.

For more information about build callbacks, refer to Use build callbacks.

Additional resources: IPreprocessBuildWithContext, BuildPipeline.BuildPlayer, BuildPipeline.BuildAssetBundles.

```csharp
using System.Linq;
using System.Text;
using UnityEditor.Build;
using UnityEditor.Build.Reporting;
using UnityEngine;// To try this example add this code into an Editor-only assembly,
// run a Player build or AssetBundle build, and then look for the message in the console.
class BuildPostProcessor : IPostprocessBuildWithContext
{
    public int callbackOrder { get { return 100; } }
    public void OnPostprocessBuild(BuildCallbackContext ctx)
    {
        // Log some information from the BuildCallbackContext
        // Note: OnPostprocessBuild callbacks are invoked after the build process completes,
        // regardless of whether it succeeded, failed, or was cancelled.
        // However, the content of the BuildCallbackContext.Report may not be completely finalized.
        // For example, the summary.buildEndedAt has not been be determined,
        // and the incomplete "parent" BuildSteps still report 0 for their durations.
        var summary = ctx.Report.summary;        // This callback runs whether the build succeeded, failed, or was cancelled
        if (summary.result != BuildResult.Succeeded)
        {
            Debug.LogWarning($"Build completed with result: {summary.result}");
        }        var files = ctx.Report.GetFiles();
        ulong size = 0;
        foreach (var file in files)
            size += file.size;        var sb = new StringBuilder();
        sb.AppendLine("Build completed");
        sb.AppendLine($"  Target: {summary.platform}");
        sb.AppendLine($"  Output Location: {summary.outputPath}");
        sb.AppendLine($"  Number of output files: {files.Length}");
        sb.AppendLine($"  Total size in bytes: {size}");
        sb.AppendLine($"  Starting time: {summary.buildStartedAt.ToLocalTime().ToShortTimeString()}");
        sb.AppendLine();        var buildSteps = ctx.Report.steps;
        sb.AppendLine($"Build steps: {buildSteps.Length}");
        int maxWidth = buildSteps.Max(s => s.name.Length + s.depth) + 2;
        foreach (var step in buildSteps)
        {
            string rawStepOutput = new string('-', step.depth) + ' ' + step.name;
            sb.AppendLine($"{rawStepOutput.PadRight(maxWidth)}: {step.duration:g}");
        }        Debug.Log(sb.ToString());
    }
}
```

### Public Methods

| Method | Description |
| --- | --- |
| OnPostprocessBuild | Implement this function to receive a callback after the build is complete. |
