<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/define-custom-data-formats-particles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Define custom data formats for particles in the Built-In Render Pipeline

The Custom Data module allows you to define custom data formats in the Editor to be attached to **particles**. You can also set this in a script. See documentation on Particle System vertex streams for more information on how to set custom data from a script and feed that data into your **shaders**.

Data can be in the form of a **Vector**, with up to 4 MinMaxCurve components, or a **Color**, which is an HDR-enabled MinMaxGradient. Use this data to drive custom logic in your **scripts** and Shaders.

The default labels for each curve/gradient can be customized by clicking on them and typing in a contextual name. When passing custom data to shaders, it is useful to know how that data is used inside the shader. For example, a curve may be used for custom alpha testing, or a gradient may be used to add a secondary color to particles. By editing the labels, it is simple to keep a record in the UI of the purpose of each custom data entry.
