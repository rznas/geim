<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Material.SetTexture.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| nameID | Property name ID, use Shader.PropertyToID to get it. |
| name | Property name, e.g. "_MainTex". |
| value | Texture to set. |
| element | Optional parameter that specifies the type of data to set from the RenderTexture. |

### Description

Sets a named texture.

Many shaders use more than one texture. Use SetTexture to change the texture (identified by shader property name, or unique property name ID).

When setting textures on materials using the Standard Shader, you should be aware that you may need to use EnableKeyword to enable features of the shader that were not previously in use. For more detail, read Accessing Materials via Script.

Common texture names used by Unity's builtin shaders: 
 `"_MainTex"` is the main diffuse texture. This can also be accessed via mainTexture property. 
 `"_BumpMap"` is the normal map.

The shader properties also show some of the keywords needed to set the Texture of a Material. To see this, go to your Material and right click on the **Shader** dropdown at the top. Next, pick **Select Shader**.

By specifying a `RenderTextureSubElement`, you can indicate which type of data to set from the RenderTexture. The possible options are: RenderTextureSubElement.Color, RenderTextureSubElement.Depth, and RenderTextureSubElement.Stencil.

Additional resources: mainTexture property, GetTexture, Shader.PropertyToID, Properties in Shader Programs, RenderTextureSubElement.

```csharp
//Attach this script to your GameObject (make sure it has a Renderer component)
//Click on the GameObject. Attach your own Textures in the GameObject’s Inspector.//This script takes your GameObject’s material and changes its Normal Map, Albedo, and Metallic properties to the Textures you attach in the GameObject’s Inspector. This happens when you enter Play Modeusing UnityEngine;public class Example : MonoBehaviour {    //Set these Textures in the Inspector
    public Texture m_MainTexture, m_Normal, m_Metal;
    Renderer m_Renderer;    // Use this for initialization
    void Start () {
        //Fetch the Renderer from the GameObject
        m_Renderer = GetComponent<Renderer> ();        //Make sure to enable the Keywords
        m_Renderer.material.EnableKeyword ("_NORMALMAP");
        m_Renderer.material.EnableKeyword ("_METALLICGLOSSMAP");        //Set the Texture you assign in the Inspector as the main texture (Or Albedo)
        m_Renderer.material.SetTexture("_MainTex", m_MainTexture);
        //Set the Normal map using the Texture you assign in the Inspector
        m_Renderer.material.SetTexture("_BumpMap", m_Normal);
        //Set the Metallic Texture as a Texture you assign in the Inspector
        m_Renderer.material.SetTexture ("_MetallicGlossMap", m_Metal);
    }
}
```
