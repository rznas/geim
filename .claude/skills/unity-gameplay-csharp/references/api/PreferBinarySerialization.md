<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/PreferBinarySerialization.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Prefer ScriptableObject derived type to use binary serialization regardless of project's asset serialization mode.

This is useful for custom asset types that contain large amounts of data. Always keeping them stored as binary can both improve read/write performance, as well as produce more compact representations on disk. The major downsides are that binary asset files are no longer humanly readable, and that you can no longer merge them in your revision control software.

Asset serialization in Unity always uses a consistent serialization mode throughout the entirety of each file. As a result, when an asset file contains multiple assets, it might not always be possible to respect the desire to force a specific asset to use binary serialization. The serialization mode of an asset file is controlled by the main asset at that path. As a result, care has to be taken when composing complex assets using AssetDabase.CreateAsset and AssetDatabase.AddObjectToAsset to ensure that the main asset is the object with this attribute set. Scene files always follow the asset serialization mode configured in the project, thus PreferBinarySerialization is always ignored for assets embedded in Scenes.

The attribute can only be applied to ScriptableObject derived classes, it will be ignored for all other types.

```csharp
using UnityEngine;// Custom asset type that prefers binary serialization.
//
// Create a new asset file by going to "Asset/Create/Custom Data".
// If you open this new asset in a text editor, you can see how it
// is not affected by changing the project asset serialization mode.
//
[CreateAssetMenu]
[PreferBinarySerialization]
public class CustomData : ScriptableObject
{
    public float[] lotsOfFloatData = new[] { 1f, 2f, 3f };
    public byte[] lotsOfByteData = new byte[] { 4, 5, 6 };
}
```
