<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/QualitySettings-skinWeights.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The maximum number of bones per vertex that are taken into account during skinning, for all meshes in the project.

The value can be either One Bone, Two Bones, Four Bones or Auto. Note that higher bone counts may have a performance cost, especially above 4 bones per vertex.

This setting does not change the underlying mesh data; it only affects the number of bone weights that Unity uses when performing skinning. This means that a mesh can have bone weight data that is unused due to this setting. You can change this value at runtime.

You can set this value for a single mesh using SkinnedMeshRenderer.quality. You can set the maximum number of bone weights that mesh data stores for a single vertex using ModelImporter.maxBonesPerVertex.

```csharp
using UnityEngine;public class Example : MonoBehaviour
{
    void Start()
    {
        // Set skin weights to one bone for all Meshes
        QualitySettings.skinWeights = SkinWeights.OneBone;
    }
}
```

Additional resources: ModelImporter.maxBonesPerVertex, ModelImporter.minBoneWeight, ModelImporter.skinWeights, SkinnedMeshRenderer.quality, BoneWeight, BoneWeight1.
