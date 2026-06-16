<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/iOS.OnDemandResources.PreloadAsync.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Parameters

| Parameter | Description |
| --- | --- |
| tags | Tags for On Demand Resources that should be included in the request. |

### Returns

**OnDemandResourcesRequest** Object representing ODR request.

### Description

Creates an On Demand Resources (ODR) request.

The request will include all resources indicated by the given tags. If operation completes successfuly, then the request object will keep those resources alive until OnDemandResourcesRequest.Dispose is called or the request gets collected by a garbage collector.

Additional resources: OnDemandResourcesRequest.
