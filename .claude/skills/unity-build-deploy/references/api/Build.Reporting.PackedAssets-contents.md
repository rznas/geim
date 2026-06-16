<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Build.Reporting.PackedAssets-contents.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

An array of PackedAssetInfo objects that holds information about the content portion of the referenced file.

A Serialized File is made up of a header section, and then a flat list of the objects, in their binary serialized form. Each entry in the PackedAssetInfo array corresponds to one of these serialized objects, in the order they are saved in the file.

Similarly a .resS or .resource file is made of a sequence of binary blobs of audio, video, texture, mesh or other large data types. The PackedAssetInfo array has an entry for each of these blobs.
