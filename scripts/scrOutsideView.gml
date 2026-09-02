/// scrOutsideView()

for (var i = 1; i <= 2; i ++) {
    var idxSide = clamp(floor(x / (room_width / 2)),0,1) + 1;
    if ((idxSide == i && (
        bbox_right < view_xview[i] || bbox_left > view_xview[i]+view_wview[i]
        || bbox_bottom < view_yview[i] || bbox_top > view_yview[i]+view_hview[i])))
            { return true; }
}

return false;