currentstage = global.stage;
bgs = [BG, menu_bg]
floors = [spr_floor_debug1, spr_floor_debug]
layer_id = layer_get_id("Background")
bg_id = layer_background_get_id(layer_id)
stage_bg = bgs[currentstage];
stage_floor = floors[currentstage];