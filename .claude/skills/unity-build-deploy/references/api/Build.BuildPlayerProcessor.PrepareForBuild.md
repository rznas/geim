<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.BuildPlayerProcessor.PrepareForBuild.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| buildPlayerContext | The context for the scheduled Player build. |

### Description

Implement this function to receive a callback before a Player build starts.

You can use this function to customize the build before Unity starts building the Player. For example, the following code example demonstrates how to include streaming assets in the Player build without placing them in your project's `StreamingAssets` folder.

Additional resources: BuildPlayerContext.AddAdditionalPathToStreamingAssets

```csharp
class PrepareBuild : UnityEditor.Build.BuildPlayerProcessor
{
    public override void PrepareForBuild(UnityEditor.Build.BuildPlayerContext buildPlayerContext)
    {
        // Add data files to the Player build's StreamingAssets folder
        // Works for files located both inside and outside the Unity project        buildPlayerContext.AddAdditionalPathToStreamingAssets("Assets/dataFromUnityProject.txt", "dataFromUnityProject.txt");        buildPlayerContext.AddAdditionalPathToStreamingAssets("C:/Temp/dataOutsideUnityProject.txt", "dataOutsideUnityProject.txt");
    }
}
```
