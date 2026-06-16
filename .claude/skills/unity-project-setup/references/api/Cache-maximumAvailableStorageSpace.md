<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Cache-maximumAvailableStorageSpace.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Allows you to specify the total number of bytes that can be allocated for the cache.

This value can be set to a smaller number in order to limit the amount of storage space used by cached AssetBundles. This property does not account for total available storage space. If a user's computer has less available storage space on the drive where the cache is located than maximumAvailableStorageSpace, the full amount of maximumAvailableStorageSpace will not be usable. Cache storage is allocated on an as-needed basis in order to minimize storage space usage.
