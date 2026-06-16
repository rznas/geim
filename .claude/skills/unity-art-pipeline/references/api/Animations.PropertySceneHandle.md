<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/Animations.PropertySceneHandle.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Handle to read a Component property on an object in the Scene.

PropertySceneHandle are read-only.

```csharp
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Animations;public struct PropertySceneHandleJob : IAnimationJob
{
    public PropertySceneHandle handleR;
    public PropertySceneHandle handleG;
    public PropertySceneHandle handleB;    public void ProcessRootMotion(AnimationStream stream)
    {
    }    public void ProcessAnimation(AnimationStream stream)
    {
        // Log the light color.
        var r = handleR.GetFloat(stream);
        var g = handleG.GetFloat(stream);
        var b = handleB.GetFloat(stream);
        Debug.LogFormat("Light color: (R: {0}, G: {1}, B: {2})", r, g, b);
    }
}[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(Light))]
public class PropertySceneHandleExample : MonoBehaviour
{
    public Light sceneLight;    PlayableGraph m_Graph;
    AnimationScriptPlayable m_AnimationScriptPlayable;    void Start()
    {
        if (sceneLight == null)
            return;        var animator = GetComponent<Animator>();        m_Graph = PlayableGraph.Create("PropertySceneHandleExample");
        var output = AnimationPlayableOutput.Create(m_Graph, "output", animator);        var animationJob = new PropertySceneHandleJob();
        animationJob.handleR = animator.BindSceneProperty(sceneLight.transform, typeof(Light), "m_Color.r");
        animationJob.handleG = animator.BindSceneProperty(sceneLight.transform, typeof(Light), "m_Color.g");
        animationJob.handleB = animator.BindSceneProperty(sceneLight.transform, typeof(Light), "m_Color.b");
        m_AnimationScriptPlayable = AnimationScriptPlayable.Create(m_Graph, animationJob);        output.SetSourcePlayable(m_AnimationScriptPlayable);
        m_Graph.Play();
    }    void OnDisable()
    {
        if (sceneLight == null)
            return;        m_Graph.Destroy();
    }
}
```

Additional resources: AnimatorJobExtensions.BindSceneProperty, TransformSceneHandle, PropertyStreamHandle, and TransformStreamHandle.

### Public Methods

| Method | Description |
| --- | --- |
| GetBool | Gets the boolean property value from an object in the Scene. |
| GetEntityId | Gets the EntityId property value from an object in the Scene. |
| GetFloat | Gets the float property value from an object in the Scene. |
| GetInt | Gets the integer property value from an object in the Scene. |
| IsResolved | Returns whether or not the handle is resolved. |
| IsValid | Returns whether or not the handle is valid. |
| Resolve | Resolves the handle. |
