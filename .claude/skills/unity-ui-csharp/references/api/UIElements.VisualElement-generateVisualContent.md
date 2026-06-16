<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/UIElements.VisualElement-generateVisualContent.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Delegate function to generate the visual content of a visual element.

Use this delegate to generate custom geometry in the content region of the VisualElement. You can use the MeshGenerationContext.painter2D object to generate visual content, or use the MeshGenerationContext.Allocate method to manually allocate a mesh and then fill in the vertices and indices. 
 
 This delegate is called during the initial creation of the VisualElement and whenever a repaint is needed. This delegate isn't called on every frame refresh. To force a repaint, call VisualElement.MarkDirtyRepaint. 
 
 **Note**: When you execute code in a handler to this delegate, don't update any property of the VisualElement, as this can alter the generated content and cause unwanted side effects, such as lagging or missed updates. To avoid this, treat the VisualElement as read-only within the delegate. 

 Additional resources: MeshGenerationContext
