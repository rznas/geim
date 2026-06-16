<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-ReflectionProbe.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Reflection Probe Inspector window reference

| **Property** | **Description** |
| --- | --- |
| **Type** | Choose whether the probe is for a **Baked**, **Custom**, or **Realtime** setup. If you select **Baked**, the **Reflection Probe** does not capture **GameObjects** at runtime that have their Reflection Probe Static flag disabled. If you want to capture dynamic GameObjects in a baked Reflection Probe, select **Custom** and enable **Dynamic Objects**. |
| **Dynamic Objects** | (**Custom** type only) Forces objects not marked as **Static** to be baked in to the reflection. |
| **Cubemap** | (**Custom** type only) Sets a custom cubemap for the probe. |
| **Refresh Mode** | (**Realtime** type only) Selects if and how the probe will refresh at runtime. The *On Awake* option renders the probe only once when it first becomes active. *Every Frame* renders the probe every frame update, optionally using **Time Slicing** (see below). The **Via Scripting** option refreshes the probe from a user script command rather than an automatic update. |
| **Time Slicing** | (**Realtime** type only) How should the probe distribute its updates over time? The options are **All Faces At Once** (spreads update over nine frames), **Individual Faces** (updates over fourteen frames) and **No Time Slicing** (the update happens entirely within one frame). See below for further details. |

## Runtime Settings

| **Property** | **Description** |
| --- | --- |
| **Importance** | A value that indicates the relative priority of this Reflection Probe for sorting. Unity renders probes with a higher value on top of those with a lower value where an object is in range of more than one probe. This setting also affects **Blending**. Refer to Using Reflection Probes for more information about reflection probe blending. |
| **Intensity** | The intensity modifier that is applied to the texture of this probe in its **shader**. |
| **Box Projection** | Check this box to enable projection for reflection UV mappings. If you use the Universal **Render Pipeline** (URP), you must also enable **Box Projection** in the URP asset. |
| **Box Size** | The size of the probe’s bounding box in which the probe can contribute to reflections. The size is in world space. Also used by **Box Projection**. |
| **Box Offset** | The center of the probe’s bounding box in which the probe can contribute to reflections. The offset is relative to the position of the probe. Also used by **Box Projection**. |

## Cubemap Capture Settings

| **Property** | **Description** |
| --- | --- |
| **Resolution** | The resolution of the captured reflection image. |
| **HDR** | Should High Dynamic Range rendering be enabled for the cubemap? This also determines whether probe data is saved in [OpenEXR](http://www.openexr.com/) or PNG format. |
| **Shadow Distance** | Distance at which shadows are drawn when rendering the probe. |
| **Clear Flags** | Option to specify how empty background areas of the cubemap will be filled. The options are **Skybox** and **Solid Color**. |
| **Background** | Background colour to which the reflection cubemap is cleared before rendering. |
| **Culling Mask** | Allows objects on specified layers to be included or excluded in the reflection. See the section about the **Camera**’s culling mask on the Layers page. |
| **Use Occlusion Culling** | Should **occlusion culling** be used when baking the probe? |
| **Clipping Planes** | Near and **far clipping planes** of the probe’s “camera”. |

## Additional resources

- Reflections in URP
- Reflection and refraction in the High-Definition Render Pipeline (HDRP)

ReflectionProbe
