<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/web-debugging-troubleshooting.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Troubleshoot common Web build errors

Resolve common Web build problems such as memory exhaustion, server configuration issues, and unsupported **compression** formats.

## Problem: The build runs out of memory

This is a common problem, especially on 32-bit browsers. For more information on Web memory issues and how to fix them, refer to the documentation on Memory in Unity Web.

## Error message: Incorrect header check

The browser console log usually prints this error due to incorrect server configuration. For more information on how to deploy a release build, refer to documentation on Deploying compressed builds.

## Error message: Decompressing this format (1) isn’t supported on this platform

The browser console log prints this error when the content tries to load an AssetBundle compressed using LZMA, which Unity Web doesn’t support. Re-compress the AssetBundle using LZ4 compression to solve this problem. For more information on compression for Web, refer to documentation on Web building, particularly the **AssetBundles** section.

## Additional resources

- Debug and troubleshoot Web builds
- Debug Web builds in development
- Debug production Web builds
