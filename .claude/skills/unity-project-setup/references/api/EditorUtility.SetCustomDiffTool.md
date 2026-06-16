<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/EditorUtility.SetCustomDiffTool.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| path | Diff tool path. |
| twoWayDiff | Two - way diff command line. |
| threeWayDiff | Three - way diff command line. |
| mergeCommand | Merge command line. |
| forceEnableCustomTool | Sets Custom Tool as current active Revision Control Diff/Merge tool. |

### Description

Set custom diff tool settings.

```csharp
using UnityEditor;
using UnityEngine;public class EditorScript : MonoBehaviour
{
    [MenuItem("SetCustomDiffTool/DiffMerge")]
    public static void ExampleSetCustomDiffTool()
    {
        string path = "/Applications/DiffMerge.app/Contents/MacOS/DiffMerge";
        string twoWayDiffCommandLine = "-t1 #LTITLE -t2 #RTITLE #LEFT #RIGHT";
        string threeWayDiffCommandLine = "-t1 #LTITLE -t2 #ATITLE -t3 #RTITLE -ro2 #LEFT #ANCESTOR #RIGHT";
        string mergeArguments = "-m -t1 #LTITLE -t2 #ATITLE -t3 #RTITLE -r #OUTPUT #LEFT #ANCESTOR #RIGHT";        EditorUtility.SetCustomDiffTool(path, twoWayDiffCommandLine, threeWayDiffCommandLine, mergeArguments);
    }
}
```

For more information about diff tools, see Revision Control Diff/Merge.
