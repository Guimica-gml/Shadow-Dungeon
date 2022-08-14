// Creating the camera
camera = camera_create();

// View size
view_widht = 640;
view_height = 320;

// Setting camera information
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(view_widht, view_height, 1, 10000);
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

// Setting camera[0] to the camera that I created
view_set_camera(view_camera[0], camera);

// The target of the camera
target = obj_player;
