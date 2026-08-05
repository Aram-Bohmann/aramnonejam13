if (!variable_global_exists("camera_ready")) {
    global.camera_ready = false;
}

design_width = 1920;
design_height = 1080;

if (!global.camera_ready) {
    if (os_type == os_windows || os_type == os_macosx || os_type == os_linux) {
        window_set_fullscreen(false);
    }

    var _screen_w = display_get_width();
    var _screen_h = display_get_height();

    var _margin = 0.85;

    resolution_scale = min(_screen_w / design_width, _screen_h / design_height) * _margin;
    resolution_scale = min(resolution_scale, 1);

    global.view_width = design_width;
    global.view_height = design_height;

    var _win_w = round(design_width * resolution_scale);
    var _win_h = round(design_height * resolution_scale);

    if (os_type == os_windows || os_type == os_macosx || os_type == os_linux) {
        window_set_size(_win_w, _win_h);
        window_center();

        window_set_min_width(_win_w);
        window_set_max_width(_win_w);
        window_set_min_height(_win_h);
        window_set_max_height(_win_h);
    }

    surface_resize(application_surface, design_width, design_height);
    display_set_gui_size(design_width, design_height);

    global.camera_ready = true;
}