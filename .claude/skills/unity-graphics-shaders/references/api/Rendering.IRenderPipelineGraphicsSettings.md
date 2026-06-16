<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.IRenderPipelineGraphicsSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Classes implementing this interface are stored in RenderPipelineGlobalSettings. Use them to store project default data.

```csharp
using System;
using System.ComponentModel;
using UnityEngine;
using UnityEngine.Rendering;[
    Serializable,               // required
    Categorization.CategoryInfo("Dummy",1), Categorization.ElementInfo("A",10), // optional: sort out in the Graphics tab
    SupportedOnRenderPipeline   // optional: which SRP support it
]
public class DummyA : IRenderPipelineGraphicsSettings
{
    enum Version
    {
        Initial,        Count,
        Last = Count - 1
    }
    [SerializeField] Version m_Version = Version.Last;
    int IRenderPipelineGraphicsSettings.version => (int)m_Version;
    bool IRenderPipelineGraphicsSettings.isAvailableInPlayerBuild => false;    // data project wise
    public int myInt = 33;
}
```

### Properties

| Property | Description |
| --- | --- |
| isAvailableInPlayerBuild | If the setting is available in player build. |
| version | The current version of this settings. |

### Public Methods

| Method | Description |
| --- | --- |
| Reset | Optional method to perform custom reset logic. |
