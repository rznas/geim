<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.GetVersion.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Returns the version of the asset postprocessor.

As the script is recompiled, if a version change is detected, the assets associated with this asset postprocessor will be reimported.

**Important:** If you change the code of an AssetPostprocessor, you should default to incrementing its version number using GetVersion. For example, when there is a change to the output the AssetPostprocessor produces or the input dependencies it declares. For more information, refer to Importer Consistency.

```csharp
using UnityEngine;
using UnityEditor;public class Example : AssetPostprocessor
{    
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;    public override uint GetVersion() 
    { 
        return k_Version; 
    }
}
```
