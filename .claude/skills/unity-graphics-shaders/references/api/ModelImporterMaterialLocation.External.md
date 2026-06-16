<!-- source: /home/reza/projects/game/docs/UnityDocumentation/Documentation/en/ScriptReference/ModelImporterMaterialLocation.External.html
     Unity 6 (6000.x) — converted by unity_html_to_md.py.
     Doc-sourced; not compile-tested in this environment. -->

### Description

Extract the materials and textures from the model.

Unity extracts the materials to the Materials folder, at the same level as the model file. Unity also extracts the embedded textures to the folder named <modelName>.fbm.

For example, if the model is Assets/Model/MyModel.fbx, then its materials are extracted to Assets/Model/Materials, and the embedded textures are extracted to Assets/Model/MyModel.fbm.

Note: if the Materials folder already contains a material with the same name as a material being extracted, Unity does not replace the existing material.
