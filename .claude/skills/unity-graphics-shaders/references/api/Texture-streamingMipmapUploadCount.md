<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Texture-streamingMipmapUploadCount.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

How many times has a Texture been uploaded due to Texture mipmap streaming.

Each time the streaming system decides that a different mipmap level should be loaded for a Texture, a new read and upload is scheduled. This counts how many uploads has happened since the game started running.
