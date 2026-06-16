<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/class-LightingSettings.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Lighting Settings Asset Inspector window reference

When you view the Lighting Settings Asset in the **Inspector** or the Lighting window, the properties that you can view or edit are divided into the following sections:

- Realtime Lighting
- Mixed Lighting

For information about **Lightmapping Settings** section of the Lighting Settings Asset, refer to Lightmapping settings in the Lighting Settings Asset reference.

## Realtime Lighting

This section contains settings related to the Enlighten Realtime Global Illumination system.

| **Property** | **Description** |
| --- | --- |
| **Realtime **Global Illumination**** | Enable this property to use the **Enlighten** Realtime Global Illumination system in **Scenes** that use this Lighting Settings Asset. |
| **Realtime Environment Lighting** | Enable this property to use the Enlighten Realtime Global Illumination system to calculate and update ambient light in real-time.   This property is only available when both Enlighten **Realtime Global Illumination** and **Baked Global Illumination** are enabled in the Scene. |
| **Indirect Resolution** | Specifies the number of texels per unit to use for realtime lightmaps. Increasing this value improves lightmap quality, but also increases render time.  This property is only available if you enable **Realtime Global Illumination**. |

## Mixed Lighting

This section contains settings that affect the behavior of Baked Lights and Mixed Lights in Scenes that use this Lighting Settings Asset.

| **Property** | **Description** |
| --- | --- |
| **Baked Global Illumination** | When this setting is enabled, Unity enables the Baked Global Illumination system for the Scenes that use this Lighting Settings Asset. When this setting is disabled, Unity disables the Baked Global Illumination system for the Scenes that use this Lighting Settings Asset.  When the Baked Global Illumination system is enabled, Unity uses Baked lights in the Scene for lightmapping only, and Mixed lights behave according to the **Lighting Mode** setting. When the Baked Global Illumination system is disabled, Unity forces all Baked and Mixed lights in the Scene to act as though they were Realtime Lights. |
| **Lighting Mode** | Specifies which Lighting Mode Unity uses for all Mixed Lights in the Scenes that use this Lighting Settings Asset. |

### Lighting Mode dropdown

| **Value** | **Description** |
| --- | --- |
| **Baked Indirect** | Use Baked Indirect Lighting Mode for all Mixed Lights in the Scenes that use this Lighting Settings Asset.  In Baked Indirect Lighting Mode, Mixed Lights provide real-time direct lighting and Unity bakes indirect light into lightmaps and Light Probes. Real-time shadow maps provide shadows. |
| **Shadowmask** | Use Shadowmask Lighting Mode for all Mixed Lights in the Scenes that use this Lighting Settings Asset.  In Shadowmask Lighting Mode Mixed Lights provide real-time direct lighting while indirect light is baked into lightmaps and probes. This mode combines real-time and baked shadows. |
| **Subtractive** | Use Subtractive Lighting Mode for all Mixed Lights in the Scenes that use this Lighting Settings Asset.  In Subtractive Lighting Mode Mixed Lights provide baked direct and indirect lighting for static objects. Dynamic objects receive real-time direct lighting and cast shadows using the Directional Light. |

## Additional resources

- Create lighting presets with a Lightmap Parameters Asset
- Configure lightmapping with a Lighting Settings Asset
- Lightmapping settings in the Lighting Settings Asset reference

LightingSettings
