<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-Fog.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# ShaderLab: legacy fog

**Note**: The **ShaderLab** functionality on this page is legacy, and is documented for backwards compatibility only. If your **shader** source file includes HLSL code, Unity ignores these commands completely. If your shader source file does not include HLSL code, Unity compiles these commands into regular shader programs on import.

## Render pipeline compatibility

| **Feature name** | **Built-in **Render Pipeline**** | **Universal Render Pipeline (URP)** | **High Definition Render Pipeline (HDRP)** | **Custom SRP** |
| --- | --- | --- | --- | --- |
| **Legacy fog** | Yes | No | No | No |

# Overview

Use the Fog command to enable or disable Unity’s built-in fog, in shaders that are written using legacy fixed-function style commands.

Configure the **project settings** for the built-in fog effect using the RenderSettings class, or the Lighting window, and then use this command to enable or disable fog in a given Pass.

Fogging blends the color of the generated pixels down towards a given color, based on the distance from the **camera**. Fogging does not modify a blended **pixel**’s alpha value, only its RGB components.

## Valid parameter values

| **Parameter** | **Value** | **Function** |
| --- | --- | --- |
| **Mode** | `Off` | Do not apply built-in fog to this Pass. |
|  | `Global` | Apply built-in fog to this Pass, based on the project settings.  Note that if fog is disabled in the project settings, Unity will not apply it to this Pass. |

## Examples

This example code demonstrates the syntax for using this command in a Pass block.

```
Shader "Examples/FogExample"
{
    SubShader
    {
         // The rest of the code that defines the SubShader goes here.

        Pass
        {    
              Fog Off
            
              // The rest of the code that defines the Pass goes here.
        }
    }
}
```
