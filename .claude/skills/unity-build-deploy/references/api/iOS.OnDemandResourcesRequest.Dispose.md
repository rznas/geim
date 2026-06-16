<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.OnDemandResourcesRequest.Dispose.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Release all resources kept alive by On Demand Resources (ODR) request.

OnDemandResourcesRequest will keep the on demand resource alive until either Dispose is called or the request object is collected by the garbage collector, which is the equivalent of calling [NSBundleResourceRequest.endAccessingResources](https://developer.apple.com/library/ios/documentation/Foundation/Reference/NSBundleResourceRequest_Class/) class.
