<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/build-scripts-only.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Create a scripts-only build

A scripts-only build is a build that reuses the content from the previous build, rather than rebuilding it.

When testing script changes it can be useful to force a scripts-only build to avoid the time taken to rebuild the content. This can be useful if you know that there are data changes, but want to quickly test a code change, without applying the pending data changes.

To create a scripts-only build, create a build with the **Force skip data build** option, as follows:

1. Open the **Build Profiles** window (**File** > **Build Profiles**).
2. Next to the **Build** button, select the drop-down.
3. Select **Force skip data build**.

**Note:** The **Force skip data build** option doesn’t work if there have been any changes in the serialization layout of the **scripts** in the project. For example, when you add a new field to a MonoBehaviour then you must perform a regular or clean Player build to serialize the assets to match the new class definition.

You can also pass the `BuildOptions.BuildScriptsOnly` flag when calling `BuildPipeline.BuildPlayer` in custom build scripts.

The incremental build pipeline automates scripts-only builds. On platforms that support it, Unity automatically reuses the content from the previous build, as long as the content hasn’t changed. In that case it’s not necessary to explicitly invoke a scripts-only build.

## Additional resources

- Create a clean build
- Create a build from the Editor
- Content output of a build
