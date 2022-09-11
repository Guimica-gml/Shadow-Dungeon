{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_dungeon1_boss",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":true,"xview":32,"yview":0,"wview":640,"hview":320,"xport":0,"yport":0,"wport":1280,"hport":640,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1280,"hview":640,"xport":0,"yport":0,"wport":1280,"hport":640,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1280,"hview":640,"xport":0,"yport":0,"wport":1280,"hport":640,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1280,"hview":640,"xport":0,"yport":0,"wport":1280,"hport":640,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1280,"hview":640,"xport":0,"yport":0,"wport":1280,"hport":640,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1280,"hview":640,"xport":0,"yport":0,"wport":1280,"hport":640,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1280,"hview":640,"xport":0,"yport":0,"wport":1280,"hport":640,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1280,"hview":640,"xport":0,"yport":0,"wport":1280,"hport":640,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Transition","instances":[],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Control","instances":[],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Bullet","instances":[],"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instances","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_55DFF4FB","properties":[],"isDnd":false,"objectId":{"name":"obj_boss","path":"objects/obj_boss/obj_boss.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":544.0,"y":192.0,},
      ],"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Flags","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_2B626C73","spriteId":{"name":"spr_flag","path":"sprites/spr_flag/spr_flag.yy",},"headPosition":1.0,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"animationSpeed":0.0,"colour":4294967295,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":624.0,"y":32.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_7748E2F0","spriteId":{"name":"spr_flag","path":"sprites/spr_flag/spr_flag.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"animationSpeed":0.0,"colour":4294967295,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":80.0,"y":32.0,},
      ],"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"TransitionCollision","instances":[],"visible":true,"depth":500,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Collision","tilesetId":{"name":"ts_collision","path":"tilesets/ts_collision/ts_collision.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":21,"SerialiseHeight":10,"TileCompressedData":[
-21,-2147483648,-23,1,-18,-2147483648,-3,1,-18,-2147483648,-3,1,-18,-2147483648,-2,1,-19,-2147483648,-3,1,-18,
-2147483648,-3,1,-18,-2147483648,-3,1,-18,-2147483648,-22,1,],},"visible":false,"depth":600,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"TileLight","tilesetId":{"name":"ts_light","path":"tilesets/ts_light/ts_light.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":21,"SerialiseHeight":10,"TileCompressedData":[
-24,-2147483648,1,4,-12,-2147483648,3,0,-2147483648,4,-109,-2147483648,1,3,-16,-2147483648,1,1,-43,-2147483648,],},"visible":true,"depth":700,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRTileLayer","resourceVersion":"1.1","name":"Scene","tilesetId":{"name":"ts_scene","path":"tilesets/ts_scene/ts_scene.yy",},"x":0,"y":0,"tiles":{"TileDataFormat":1,"SerialiseWidth":21,"SerialiseHeight":10,"TileCompressedData":[
-22,0,2,8,9,-16,34,4,10,11,0,29,-13,31,1,36,-4,31,12,27,0,
29,31,30,30,31,30,30,31,31,37,-3,31,-2,36,-4,31,5,27,0,35,31,
30,-6,31,-2,37,2,31,36,-6,31,2,27,0,-13,31,2,36,37,-4,31,3,
27,0,23,-3,31,-2,30,-6,31,-2,37,-2,36,-3,31,4,27,0,29,36,-3,
31,-2,30,2,31,36,-3,31,1,37,-6,31,5,27,0,29,36,36,-16,31,3,
27,0,24,-18,22,1,25,],},"visible":true,"depth":800,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4280752668,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":900,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":32,"gridY":32,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "${project_dir}/rooms/rm_dungeon1_boss/RoomCreationCode.gml",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_55DFF4FB","path":"rooms/rm_dungeon1_boss/rm_dungeon1_boss.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 672,
    "Height": 320,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": true,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Dungeon 1",
    "path": "folders/Rooms/Dungeon 1.yy",
  },
  "tags": [
    "playable_room",
  ],
}