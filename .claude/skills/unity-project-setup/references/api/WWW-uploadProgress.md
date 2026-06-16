<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/WWW-uploadProgress.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How far has the upload progressed (Read Only).

This is a value between zero and one; 0 means nothing is sent yet, 1 means upload complete.

Since all sending of data to the server is done before receiving data, `uploadProgress` will always be 1.0 when `progress` is larger than 0.
