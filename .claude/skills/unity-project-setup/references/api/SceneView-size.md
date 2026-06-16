<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/SceneView-size.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The size of the Scene view measured diagonally.

Use with pivot, rotation, and CameraSettings.fieldOfView to calculate camera transformation. 
  
 The image above shows the math used to calculate the actual field of view. Here BC = size, and you need to find AB. ACB is a right angle, and BAC is half the field of view. That creates the expression: sin(BAC) = BC/AB, and so AB = BC/sin(BAC).
