<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AssetBundle-memoryBudgetKB.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Controls the size of the shared AssetBundle loading cache. Default value is 1MB.

Depending on your AssetBundle build and load strategy, sections of the AssetBundle file may be accessed multiple times. To improve loading performance, the AssetBundle loading cache stores recently accessed pages of the AssetBundle file. The default cache size should be sufficient in most cases, but the optimal cache size may vary depending on your workload. The optimal size can be determined by measuring how different cache sizes affect the AssetBundle loading times of your specific workload. If you load lots of small objects (e.g. 100 addressable prefabs) individually out of an AssetBundle, a larger cache would likely improve performance since future reads of other objects might reuse cached pages. If your AssetBundle consists of fewer large objects, or if you read all your objects simultaneously with functions like AssetBundle.LoadAll, a larger cache may not help since the cached pages will likely not be revisited.
