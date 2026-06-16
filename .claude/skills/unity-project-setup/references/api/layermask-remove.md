<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/Manual/layermask-remove.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

# Remove a layer from a layerMask

To remove a layer from a layermask, use the [logical AND operator](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/operators/bitwise-and-shift-operators#logical-and-operator-) on the original layermask and the [bitwise complement](https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/operators/bitwise-and-shift-operators#bitwise-complement-operator-) of the layer to remove it.

```
originalLayerMask &= ~(1 << layerToRemove);
```

## Additional resources

- Set a layermask
- Add a layer to a layermask
