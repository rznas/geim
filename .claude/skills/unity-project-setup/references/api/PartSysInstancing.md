<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/PartSysInstancing.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Apply GPU instancing for a Particle System in the Built-In Render Pipeline

GPU instancing offers a large performance boost compared with CPU rendering. You can use it if you want your **particle** system to render **Mesh** particles (as opposed to the default rendering mode of rendering **billboard** particles).

To be able to use GPU instancing with your **particle systems**:

- Set your Particle System’s renderer mode to **Mesh**
- Use a **shader** for the renderer material that supports GPU Instancing
- Run your project on a platform that supports GPU instancing

To enable GPU instancing for a particle system, you must enable the **Enable GPU Instancing** checkbox in the **Renderer** module of your particle system.

Unity comes with a built-in particle shader that supports GPU instancing, but the default particle material does not use it, so you must change this to use GPU instancing. The particle shader that supports GPU instancing is called **Particles/Standard Surface**. To use it, you must create your own new **material**, and set the material’s shader to **Particles/Standard Surface**. You must then assign this new material to the material field in the Particle System renderer module.

If you are using a different shader for your particles, it must use ‘#pragma target 4.5’ or higher. See Shader Compile Targets for more details. This requirement is higher than regular GPU Instancing in Unity because the Particle System writes all its instance data to a single large buffer, rather than breaking up the instancing into multiple draw calls.

## Custom shader examples

You can also write custom shaders that make use of GPU Instancing. See the following sections for more information:

- Particle system GPU Instancing in a Surface Shader
- Particle system GPU Instancing in a Custom Shader
- Customising instance data used by the Particle System (to work alongside Custom Vertex Streams)
