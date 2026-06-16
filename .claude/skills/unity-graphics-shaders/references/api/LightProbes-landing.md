<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/LightProbes-landing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Precalculating indirect light with Light Probes

Resources and techniques for using **Light Probes** to store the light at specific points in a **scene**, so that Unity can calculate indirect lighting for **GameObjects** more quickly.

| **Page** | **Description** |
| --- | --- |
| Introduction to Light Probes | Learn about using Light Probes to store the light passing through specific points in a scene. |
| Light Probes and moving GameObjects | Understand how dynamic GameObjects sample the light from Light Probes. |
| Place Light Probes with the Editor | Choose where to place Light Probes, and choose the right amount of probes if you use **Enlighten** Realtime **Global Illumination**. |
| Place Light Probes with a script | An example of forming a ring of Light Probes with a script. |
| Set a GameObject to use light from Light Probes | Use a **Mesh** Renderer component to set a GameObject correctly to receive light from Light Probes. |
| Load Light Probes in multiple scenes | Use a script to control when Unity updates Light Probes if you load multiple scenes. |
| Move Light Probes at runtime | Use the `LightProbes` API to move Light Probes, for example if you create a world by loading multiple scenes additively and moving each scene to a different position. |
| Troubleshooting Light Probes | Solve common issues with Light Probes, such as light bleeding and ringing. |
| Troubleshooting objects appearing unlit by Light Probes | Troubleshoot issues causing objects to appear unlit by Light Probes. |
| Light Probes reference | Explore the properties and settings in the Light Probe component **Inspector** window reference and the Edit **Light Probe Group** tool. |

# Additional resources

- Adaptive Probe Volumes (APV) in URP
- Configure an object to sample more light probes in the Built-In Render Pipeline
