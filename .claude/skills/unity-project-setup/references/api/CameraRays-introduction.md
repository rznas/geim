<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/CameraRays-introduction.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to raycasting

In the section Understanding the View Frustum, it was explained that any point in the **camera**’s view corresponds to a line in world space. It is sometimes useful to have a mathematical representation of that line and Unity can provide this in the form of a Ray object. The Ray always corresponds to a point in the view, so the Camera class provides the ScreenPointToRay and ViewportPointToRay functions. The difference between the two is that ScreenPointToRay expects the point to be provided as a **pixel** coordinate, while ViewportPointToRay takes normalized coordinates in the range 0..1 (where 0 represents the bottom or left and 1 represents the top or right of the view). Each of these functions returns a Ray which consists of a point of origin and a vector which shows the direction of the line from that origin. The Ray originates from the near **clipping plane** rather than the Camera’s transform.position point.
