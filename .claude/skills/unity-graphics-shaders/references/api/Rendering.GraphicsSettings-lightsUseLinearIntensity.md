<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.GraphicsSettings-lightsUseLinearIntensity.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

If this is true, Light intensity is multiplied against linear color values. If it is false, gamma color values are used.

Light intensity is multiplied by the linear color value when lightsUseLinearIntensity is enabled. This is physically correct but not the default for 3D projects created with Unity 5.6 and newer. By default lightsUseLinearIntensity is set to false.
 
 2D projects will have lightsUseLinearIntensity set to disabled by default. When disabled, the gamma color value is multiplied with the intensity. If you want to use lightsUseColorTemperature, lightsUseLinearIntensity has to be enabled.
 
 If you enable lightsUseLinearIntensity on an existing project, all your Lights will need to be tweaked to regain their original look.
 
 Additional resources: GraphicsSettings.lightsUseColorTemperature, Light.colorTemperature.
