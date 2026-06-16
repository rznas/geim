<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/identify-mesh-upload-pipeline.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Check whether a mesh uses the asynchronous upload pipeline

To identify which upload pipeline Unity is using for a **mesh**, you can use the Profiler or another profiling tool and observe thread activity and **profiler markers**.

The following indicate that Unity is using the asynchronous upload pipeline to upload textures or meshes:

- The `AsyncUploadManager.ScheduleAsyncRead`, `AsyncReadManager.ReadFile`, and `Async.DirectTextureLoadBegin` profiler markers.
- Activity on the `AsyncRead` thread.

If you do not see this activity, then Unity is not using the asynchronous upload pipeline.

Note that the following profiler markers do not indicate that Unity is using the asynchronous upload pipeline; Unity calls them to check whether any asynchronous upload work needs to occur:

- `Initialization.AsyncUploadTimeSlicedUpdate`
- `AsyncUploadManager.AsyncResourceUpload`
- `AsyncUploadManager.ScheduleAsyncCommands`
