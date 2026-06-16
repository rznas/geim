<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Canvas.ForceUpdateCanvases.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Force all canvases to update their content.

A canvas performs its layout and content generation calculations at the end of a frame, just before rendering, in order to ensure that it's based on all the latest changes that may have happened during that frame. This means that in the Start callback and the first Update callback, the layout and content under the canvas may not be up-to-date.

Code that relies on up-to-date layout or content can call this method to ensure it before executing code that relies on it.
