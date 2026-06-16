<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/ReflectionProbes-set-gameobjects-use.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Set GameObjects to use Reflection Probes

To make use of the reflection **cubemap**, an object must have the **Reflection Probes** option enabled on its Mesh Renderer and also be using a **shader** that supports reflection probes. When the object passes within the volume set by the probe’s **Size** and **Probe Origin** properties, the probe’s cubemap will be applied to the object.

You can also manually set which reflection probe to use for a particular object using the settings on the object’s Mesh Renderer. To do this, select one of the options for the **Mesh** Renderer’s **Reflection Probes** property (**Simple**, **Blend Probes** or **Blend Probes and Skybox**) and drag the chosen probe onto its **Anchor Override** property.

See the Reflection Probes section in the manual for further details about principles and usage.
