<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.Xcode.Extensions.PBXProjectExtensions.AddWatchExtension.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| proj | The implicit `this` parameter for the extension method. |
| mainTarget | The GUID of the main target to link the watch extension to. |
| name | The name of the watch extension. |
| bundleId | The bundle ID of the watch extension. This bundle ID must include the bundle ID that is later used for watch app as a prefix. That is, the structure of the ID is as follows: watchAppBundleId + ".a_subdomain". |
| infoPlistPath | Path to the watch extension Info.plist document. |

### Returns

**string** The GUID of the new target.

### Description

Creates a watch extension.
