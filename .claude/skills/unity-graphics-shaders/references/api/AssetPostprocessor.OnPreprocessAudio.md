<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetPostprocessor.OnPreprocessAudio.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Add this function to a subclass to get a notification just before an audio clip is being imported.

This lets you control the import settings trough code.

```csharp
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;public class MyAudioPostprocessor : AssetPostprocessor
{
    // Increment the version number, when the AssetPostprocessors code/behavior is changed
    static readonly uint k_Version = 0;
    public override uint GetVersion() { return k_Version; }    void OnPreprocessAudio()
    {
        if (assetPath.Contains("mono"))
        {
            AudioImporter audioImporter = (AudioImporter)assetImporter;
            audioImporter.forceToMono = true;
        }
    }
}
```
