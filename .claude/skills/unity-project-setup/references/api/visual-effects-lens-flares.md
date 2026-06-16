<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/visual-effects-lens-flares.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Lens flares

Resources and techniques for creating lens flares lighting effects, which can add atmosphere to your **scene**.

| **Topic** | **Description** |
| --- | --- |
| Introduction to lens flare effects | Understand how Unity manages lens flares, which simulate the effect of lights refracting inside a **camera** lens. |
| Lens flares in URP | Resources and techniques for creating and configuring lens flares in the Universal **Render Pipeline** (URP). |
| Lens flares in the Built-In Render Pipeline | Resources and techniques for creating lens flares lighting effects in the Built-In Render Pipeline. |

## Render pipeline information

How you work with lens flare depends on the render pipeline you use.

| **Feature name** | **Universal Render Pipeline (URP)** | **High Definition Render Pipeline (HDRP)** | **Built-in Render Pipeline** |
| --- | --- | --- | --- |
| **Lens flares** | Yes  Use a Lens Flare (SRP) Data Asset and a Lens Flare (SRP) component, or a Screen Space Lens Flare override. | Yes  Use a Lens Flare (SRP) Data Asset and a Lens Flare (SRP) component, or a [Screen Space Lens Flare override](https://docs.unity3d.com/Packages/com.unity.render-pipelines.high-definition@17.0/manual/shared/lens-flare/Override-Screen-Space-Lens-Flare). | Yes  Use a Flare asset and, optionally, a Lens Flare component. |
