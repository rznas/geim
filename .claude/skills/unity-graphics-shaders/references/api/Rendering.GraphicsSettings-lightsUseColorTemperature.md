<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings-lightsUseColorTemperature.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Whether to use a Light's color temperature when calculating the final color of that Light."

Enable to use the correlated color temperature (abbreviated as CCT) for adjusting light color. CCT is a natural way to set light color based on the physical properties of the light source. The CCT is multiplied with the color filter when calculating the final color of a light source. The color temperature of the electromagnetic radiation emitted from an ideal black body is defined as its surface temperature in degrees Kelvin. White is 6500K according to the D65 standard. A candle light is 1800K and a soft warm light bulb is 2700K. If you want to use lightsUseColorTemperature, lightsUseLinearIntensity has to be enabled to ensure physically correct output.
 
 Additional resources: GraphicsSettings.lightsUseLinearIntensity, [[Light.useColorTemperature], Light.colorTemperature.
