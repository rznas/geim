<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundleBuild-assetBundleName.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

AssetBundle name.

When building an AssetBundle this property is converted to lowercase and used as the filename of the AssetBundle. On platforms with case sensitive file systems, such as Linux, the AssetBundle load would fail unless the lowercase form of the AssetBundle name is specified. To avoid surprises we recommend choosing a lowercase name for your AssetBundle. 
 
 The name may start with folder names, for example "level1/materials/bundle_a", in which case the build creates those as subfolders of the output path. 
 
 The provided name can end with a file extension, but typically AssetBundles are built with no extension because of the way AssetBundle variants work. 
 
 In the case of AssetBundle variants, the name of the AssetBundle file is this string, concatenated with the AssetBundleBuild.assetBundleVariant property as its extension, and all converted to lowercase.
