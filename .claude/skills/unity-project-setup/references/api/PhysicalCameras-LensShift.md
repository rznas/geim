<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/PhysicalCameras-LensShift.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Widen the view with Lens Shift

**Lens Shift** offsets the **camera**’s lens from its sensor horizontally and vertically. This allows you to change the focal center, and reposition a subject in the rendered frame, with little or no distortion.

This technique is common in architectural photography. For example, if you want to capture a tall building, you could rotate the camera. But that distorts the image, making parallel lines appear to converge.

If you shift the lens up instead of rotating the camera, you can change the composition of the image to include the top of the building, but parallel lines stay straight.

Similarly, you can use a horizontal lens shift to capture wide objects without the distortion you might get by rotating the camera.

### Lens shifts and frustum obliqueness

One side effect of a lens shift is that it makes the camera’s view frustum oblique. That means the angle between the camera’s center line and its frustum is smaller on one side than on the other.

You can use this to create visual effects based on perspective. For example, in a racing game, you might want to keep the perspective low to the ground. A lens shift is a way of achieving an oblique frustum without scripting.

For further information, see documentation on Using an Oblique Frustum.
