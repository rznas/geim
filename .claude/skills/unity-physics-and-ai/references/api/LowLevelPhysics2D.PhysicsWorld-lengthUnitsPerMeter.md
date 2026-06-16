<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/LowLevelPhysics2D.PhysicsWorld-lengthUnitsPerMeter.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Get the internal length units per meter. Changes won't take effect until exiting play mode. The physics system bases all length units on meters but you may need different units for your project. You can set this value to use different units but it should only be modified before any other calls to the physics system occur and only modified once. Changing this value after any physics object has been created can result in severe simulation instabilities.

 For example, if your game uses pixels for units you can use pixels for all length values sent to the physics system. There should be no extra cost however, the physics system has some internal tolerances and thresholds that have been tuned for meters. By calling this function, the physics system is better able to adjust those tolerances and thresholds to improve accuracy. A good rule of thumb is to pass the height of your player character to this function. So if your player character is 32 pixels high, then pass 32 to this function. Then you may confidently use pixels for all the length values sent to the physics system. All length values returned from the physics system will also then be in pixels because the physics system does not do any scaling internally, however, you are now on the hook for coming up with good values for gravity, density, and forces.

 The default value is 1.
