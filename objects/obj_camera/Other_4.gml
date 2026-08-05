view_enabled = true;
view_visible[0] = true;

camera_set_view_size(view_camera[0], global.view_width, global.view_height);
camera_set_view_pos(view_camera[0], 0, 0);

view_set_wport(0, window_get_width());
view_set_hport(0, window_get_height());
view_set_xport(0, 0);
view_set_yport(0, 0);