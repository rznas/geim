<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneView.AddCameraMode.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| name | The name for the new mode. |
| section | The section in which the new mode will be added. This can be an existing or new section. |

### Returns

**CameraMode** A CameraMode with the provided name and section.

### Description

Add a custom camera mode to the Scene view camera mode list.

When a user-defined mode is selected, the Scene view will render as though the "shaded" mode is selected.

```csharp
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;// Using a ScriptableSingleton lets us initialize and cleanup any managed resources with OnEnable and OnDisable.
class CustomCameraMode : ScriptableSingleton<CustomCameraMode>
{
    // Initialize an instance of this class when the editor loads.
    [InitializeOnLoadMethod]
    static void Init() => _ = instance;    const string k_Name = "Positions as Colors";
    const string k_Section = "Miscellaneous";
    Shader m_ReplacementShader;
    Dictionary<SceneView, bool> m_Active = new Dictionary<SceneView, bool>();    void OnEnable()
    {
        // Make sure to only call AddCameraMode once. This adds the camera mode to all existing and future SceneViews.
        SceneView.AddCameraMode(k_Name, k_Section);        // Custom modes are implemented through replacement shaders. We set the replacement shader during repaint events
        // in the OnSceneGUI callback.
        SceneView.duringSceneGui += OnSceneGUI;        // Create a shader in your project with code below this example.
        m_ReplacementShader = Shader.Find("Unlit/PositionAsColor");
    }    // If any managed resources are created in OnEnable, they should be cleaned up in OnDisable.
    void OnDisable()
    {
        SceneView.duringSceneGui -= OnSceneGUI;
    }    void OnSceneGUI(SceneView view)
    {
        if (Event.current.type != EventType.Repaint)
            return;        // When the active camera mode changes, we need to update the replacement shader. The replacement shader and
        // tag are serialized for each scene view, and do not need to be re-applied every frame or after domain reloads.
        // Alternatively, you can make use of the `SceneView.onCameraModeChanged` event to update the replacement shader.
        if(!m_Active.TryGetValue(view, out var wasActive))
            m_Active[view] = wasActive = false;        var isActive = view.cameraMode.drawMode == DrawCameraMode.UserDefined
             && view.cameraMode.name == k_Name
             && view.cameraMode.section== k_Section;        if (wasActive == isActive)
            return;        m_Active[view] = isActive;        if(isActive)
            view.SetSceneViewShaderReplace(m_ReplacementShader, string.Empty);
        else
            view.SetSceneViewShaderReplace(null, null);
    }
}
```

The source code for the shader used in the sample above is an example.

```csharp
Shader "Unlit/PositionAsColor"
{
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag            #include "UnityCG.cginc"            struct appdata
            {
                float4 vertex : POSITION;
            };            struct v2f
            {
                float4 vertex : SV_POSITION;
                float4 color  : COLOR;
            };            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.color = float4((normalize(v.vertex.xyz)+1)*.5, 1);
                return o;
            }            fixed4 frag (v2f i) : SV_Target
            {
                return i.color;
            }
            ENDCG
        }
    }
}
```
