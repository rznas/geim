<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.Extensions.PBXProjectExtensions.AddFileToEmbedFrameworks.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| proj | The projects extension method receiver. |
| targetGuid | The GUID of the destination target, as returned by PBXProject.TargetGuidByName(string)). |
| fileGuid | The file GUID from PBXProject.AddFile or PBXProject.AddFolderReference. |
| linkToTargetGuid | Optional. The GUID of the target that links against this framework. Defaults to `targetGuid`. |

### Description

Adds a framework to a target's Embed Frameworks build phase.

Adds the file to an Embed Frameworks copy phase on the `targetGuid`. The embed phase copies the framework into the app bundle. Associates the build file with `linkToTargetGuid` so that the target links the framework. Sets `LD_RUNPATH_SEARCH_PATHS` to `executable_path/Frameworks` on the link target. Enables code signing and header removal on copy. If the file is already in the phase, this method does nothing. **Note**: On iOS, use a different `linkToTargetGuid` when you embed the framework in the app but link it from an extension. iOS doesn't allow you to embed a framework inside another framework. On macOS, omit `linkToTargetGuid` so the same target embeds and links.
