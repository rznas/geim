<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/webgl-assetbundles.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# AssetBundles in Web

**Note**: Unity’s Addressables system is the recommended approach for asset loading. The following content applies only if you use AssetBundles directly.

As all asset data must be pre-downloaded before your content starts, consider moving assets out of your main data files and into AssetBundles. Doing so creates a smaller loader **scene** that loads quickly, while AssetBundles dynamically load assets on-demand as the user proceeds through your content. AssetBundles also help with Asset data memory management: You can unload asset data from memory for assets that you don’t need any more by calling AssetBundle.Unload.

The following considerations apply when using AssetBundles on the Web platform:

- When you use class types in your AssetBundle that aren’t used in your main build, Unity might strip the code for those classes from the build. This can cause a fail when trying to load assets from the AssetBundle. Use BuildPlayerOptions.assetBundleManifestPath to fix that issue, and refer to Distribution size and code stripping for other options.
- The **WebGL** graphics API doesn’t support threading. As HTTP downloads become available only after they’re downloaded, Unity Web platform builds need to decompress AssetBundle data on the main thread after the download is complete, blocking the main thread. To avoid this interruption, LZMA AssetBundle compression isn’t available for AssetBundles on Web. AssetBundles are compressed using LZ4 instead, which is de-compressed efficiently on-demand. If you need smaller **compression** sizes than LZ4 delivers, configure your web server to use gzip or Brotli compression (on top of LZ4 compression) on your AssetBundles. Refer to Deploying compressed builds for more information on how to do this.
- The Web platform doesn’t support file-system-based AssetBundle caching with UnityWebRequestAssetBundle.GetAssetBundle. Instead the browser caches the WebRequest responses; refer to Cache behavior in Web for details. This means that the entire AssetBundle file is held in memory when an AssetBundle loads, and you must promptly unload unused AssetBundles, especially when they’re large.

## Additional resources

- Addressables package
- Distribution size and code stripping
- Optimize your Web build
