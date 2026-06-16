<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundleBuild-assetBundleVariant.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AssetBundle variant.

When specified, this property is converted to lowercase and appended, like a file extension, to the assetBundleName property to build the complete AssetBundle filename.
 
 AssetBundle variants are used to achieve virtual assets in AssetBundles. Each AssetBundle with the same assetBundleName property will have the same internal IDs for equivalent Objects. For example one variant may contain high resolution images and the other could have matching images at a lower resolution. Other AssetBundles can reference the images, and depending on which variant is loaded, those will resolve to either high or low resolution equivalents. 
 To function correctly, each variant of an AssetBundle should have a matching list of assets. 
 Additional resources: AssetImporter.assetBundleVariant.
