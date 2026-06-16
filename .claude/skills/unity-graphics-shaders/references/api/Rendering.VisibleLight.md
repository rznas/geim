<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rendering.VisibleLight.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Holds data of a visible light.

After ScriptableRenderContext.Cull is done, CullingResults.visibleLights will contain an array of lights that are visible. The visible light structure contains packed information for most commonly used Light variables, and a VisibleLight.light reference to the Light component itself.

Additional resources: CullingResults.visibleLights, Light.

### Properties

| Property | Description |
| --- | --- |
| areaSize | Rectangle light: 2D size. Disc lights: .x is radius. Tube lights: .x is length. |
| finalColor | Light color multiplied by intensity. |
| forcedVisible | Has the light been forced to be visibile. |
| innerSpotAngle | Falloff of the spotlight inner cone from the outer cone. |
| intersectsFarPlane | Light intersects far clipping plane. |
| intersectsNearPlane | Light intersects near clipping plane. |
| light | Accessor to Light component. |
| lightType | Light type. |
| localToWorldMatrix | Light transformation matrix. |
| range | Light range. |
| screenRect | Light's influence rectangle on screen. |
| shapeRadius | Controls the amount of artificial softening applied to the edges of shadows cast by the Point or Spot light. |
| spotAngle | Spot light angle. |
