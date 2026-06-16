<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Rigidbody2D.SlideMovement-maxIterations.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the maximum number of iterations to perform when determining how a Rigidbody2D will slide.

When a Rigidbody2D.Slide occurs, each contact that is detected is counted as an interation. An attempt will be made to change direction in a new iteration only if the number of iterations hasn't yet reached the maximum number of iterations allowed.

Additional resources: Rigidbody2D.Slide and SlideResults.
