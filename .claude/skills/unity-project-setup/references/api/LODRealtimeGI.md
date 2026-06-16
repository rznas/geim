<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/LODRealtimeGI.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# LOD and Enlighten Realtime Global Illumination

Objects with **Receive **Global Illumination**** set to ****Lightmaps**** have a lighting solution with lightmaps for baked direct and indirect lighting, and lightmaps for **Enlighten** Realtime Global Illumination. For more information about **Receive Global Illumination**, see the Mesh Renderer settings and the script reference for ReceiveGI.

When you use Unity’s **LOD** system in a **Scene** where you have enabled Baked Global Illumination and Enlighten Realtime Global Illumination, the system lights the most detailed model out of the **LOD Group** as if it has the **Contribute Global Illumination** setting enabled and isn’t part of the LOD group."

Enlighten can only compute direct lighting for lower LODs and the LOD system must rely on Light Probes to sample indirect lighting.

To enable the Editor to produce lightmaps with Enlighten Realtime Global Illumination, select the **GameObject** you want to affect, view its Renderer component in the **Inspector** window, and ensure that **Contribute Global Illumination** is enabled.

For lower LODs in a LOD Group, you can only combine baked lightmaps with Enlighten Realtime Global Illumination from Light Probes or Light Probe Proxy Volumes, which you must place around the LOD Group.
