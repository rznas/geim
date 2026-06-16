<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/loading-texture-mesh-data-asynchronously.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Loading texture and mesh data asynchronously

Strategies and resources for uploading texture and **mesh** data to the GPU asynchronously, to improve performance.

| **Topic** | **Description** |
| --- | --- |
| Uploading texture and mesh data to the GPU | Understand the difference between the synchronous and asynchronous upload pipelines, and what makes a mesh eligible for asynchronous upload. |
| Check whether a mesh uses the asynchronous upload pipeline | Identify whether Unity is using the synchronous or asynchronous upload pipeline for a specific mesh. |
| Configure the asynchronous upload pipeline | Configure the streaming buffer and upload time Unity allocates for asynchronously uploading mesh data to the GPU. |
