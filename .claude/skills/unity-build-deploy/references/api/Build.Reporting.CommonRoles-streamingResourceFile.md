<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.CommonRoles-streamingResourceFile.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

The BuildFile.role value of a file that contains streaming resource data.

For example, when a texture is packed into a build, only metadata about the texture is packed into the CommonRoles.sharedAssets file - the actual content of the texture is packed into a streamingResourceFile, where it can be streamed into memory asynchronously at runtime.
