<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/search-index-manager.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Introduction to search indexing

From Unity 6000.3, Unity Search uses a single search index. By default, this index excludes packages, **prefab** content (indexes only prefab parent), and full **scene** content. It also excludes properties that are common to all objects, or that for various reasons are never searched. You can add and remove properties from the exclusion list as needed.

To manage the index, refer to Search preferences reference.

You can also use custom indexers to give the Project (asset) search provider access to more properties. A set of custom indexers is available by default; to create more, refer to Create custom search indexers.

## Additional resources

For more information, refer to the following resources:

- Search provider references
- Create a custom search provider
- Create custom search indexers
- Search preferences reference
