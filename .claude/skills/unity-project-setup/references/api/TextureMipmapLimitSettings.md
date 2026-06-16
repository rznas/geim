<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/TextureMipmapLimitSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Structure that represents texture mipmap limit settings.

This code example illustrates how to modify TextureMipmapLimitSettings from script.

```csharp
#if UNITY_EDITOR
using UnityEngine;
using UnityEditor;public class Example : MonoBehaviour
{
    [MenuItem("MyMenu/Modify MyGroup")]
    static void ModifyMyGroup()
    {
        const string textureMipmapLimitGroupName = "MyGroup";
        if (TextureMipmapLimitGroups.HasGroup(textureMipmapLimitGroupName))
        {
            TextureMipmapLimitSettings settings = QualitySettings.GetTextureMipmapLimitSettings(textureMipmapLimitGroupName);            // For the currently active quality level, this group will now offset the Global Texture Mipmap Limit. (default behavior)
            settings.limitBiasMode = TextureMipmapLimitBiasMode.OffsetGlobalLimit;            // Drop 1 extra mip. Assuming that the limitBias is now 1 and that the Global Texture Mipmap Limit is 1 as well (for example), then textures assigned to 'MyGroup' drop 2 mips in total.
            settings.limitBias++;            QualitySettings.SetTextureMipmapLimitSettings(textureMipmapLimitGroupName, settings);
        }
        else
        {
            Debug.LogError($"Failed to modify settings, could not find texture mipmap limit group '{textureMipmapLimitGroupName}'!");
        }
    }
}
#endif
```

Additional resources: TextureMipmapLimitGroups, QualitySettings.GetTextureMipmapLimitSettings, QualitySettings.SetTextureMipmapLimitSettings.

### Properties

| Property | Description |
| --- | --- |
| limitBias | The new value to apply on top of the global texture mipmap limit. Can act as an offset (default) or an override to it. |
| limitBiasMode | Indicates whether the limitBias functions as an offset to the global texture mipmap limit or, instead, acts as an override to it. |
