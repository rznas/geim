<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/AsyncInstantiateOperation.Cancel.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Method that cancels all the operations connected to the asynchronous instantiation if the operation is not done yet, that is, where isDone == false. This method deletes all the objects created so far, which are not visible to users while they're not activated, and stops all the internal jobs connected to the operation.

Cancellation is asynchronous, meaning some jobs can still be done after this call. However, Unity won't instantiate anything new for those jobs after this method runs. If the operation completes successfully, calling this method won't have any effect.
