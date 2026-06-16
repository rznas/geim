<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AudioImporter-forceToMono.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Force audioclips to mono sound type, so all audio plays through a single channel.

```csharp
using UnityEngine;
using UnityEditor;public class Example : AssetPostprocessor
{
    void OnPreprocessAudio()
    {
        AudioImporter audioImporter = assetImporter as AudioImporter;
        if (assetPath.Contains("mono"))
        {
            audioImporter = assetImporter as AudioImporter;
            audioImporter.forceToMono = true;
        }
    }
}
```
