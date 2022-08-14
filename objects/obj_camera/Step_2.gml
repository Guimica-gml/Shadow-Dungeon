x = target.x;
y = target.y;

x = clamp(x, view_widht * 0.5, room_width - view_widht * 0.5);
y = clamp(y, view_height * 0.5, room_height - view_height * 0.5);

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);
view_set_camera(view_camera[0], camera);
