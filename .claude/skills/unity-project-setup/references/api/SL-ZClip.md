<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/SL-ZClip.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# ZClip command in ShaderLab reference

Sets the GPU’s depth clip mode, which determines how the GPU handles fragments that are outside of the near and far planes.

## Render pipeline compatibility

| **Feature name** | **Universal **Render Pipeline** (URP)** | **High Definition Render Pipeline (HDRP)** | **Custom SRP** | **Built-in Render Pipeline** |
| --- | --- | --- | --- | --- |
| **ZClip** | Yes | Yes | Yes | Yes |

## Syntax

This command makes a change to the render state. Use it in a `Pass` block to set the render state for that Pass, or use it in a `SubShader` block to set the render state for all Passes in that SubShader.

| **Signature** | **Example syntax** | **Function** |
| --- | --- | --- |
| ZClip [enabled] | ZClip True | Sets the depth clip mode. |

## Parameters

| **Parameter** | **Value** | **Function** |
| --- | --- | --- |
| enabled | True | Sets the depth clip mode to clip.  This is the default setting. |
|  | False | Sets the depth clip mode to clamp.  Fragments closer than the near plane are at the near plane exactly, and fragments further away than the far plane are at the far plane exactly. |

## Additional resources

- Set the depth bias in a shader
- Set the depth clip mode in a shader
- Set the depth testing mode in a shader
