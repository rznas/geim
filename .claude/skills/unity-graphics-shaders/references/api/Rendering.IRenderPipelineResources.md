<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.IRenderPipelineResources.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Classes implementing this interface contain the resources required for your graphic features to work.

Classes implementing this interface will contain all the resources that are mandatory for your Render Pipeline to work. There is a mechanism that allows to set up null fields for you based on ResourcePathAttribute attribute. When the resource is created, a loading mechanism is called to make sure your resources are not created with null values. It is only called automatically at creation.

See also ResourceContainerAttribute.

```csharp
using UnityEngine;
using UnityEngine.Rendering;
using System;[Serializable]
[SupportedOnRenderPipeline(typeof(DummyPipelineAsset))]
class MyResourceForFeatureX : IRenderPipelineResources
{
    enum Version
    {
        Initial,
        ChangedIcon1,
        ChangedShader,
        
        Count,
        Last = Count - 1
    }
    [SerializeField, HideInInspector] Version m_version = Version.Last;
    public int version => (int)m_version;    [ResourcePath("ResourceAssets/resourceIcon1.png")]
    public Texture2D icon1;
    [ResourcePath("ResourceAssets/resourceIcon2.png")]
    public Texture2D icon2;
    [ResourcePath("My/Shader/Path", ResourcePathAttribute.SearchType.ShaderName)]
    public Shader shader;
}
```

Here we add a MyResourceForFeatureX that contains various icons and shader for a rendering feature. With the SupportedOn, we only add it for the SRP Universal Render Pipeline. Feel free to replace it by your own pipeline or HDRenderPipelineAsset if you use them.
