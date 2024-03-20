export type Box = struct {
	min: Vec3,
	max: Vec3,
};
export @symbol("graphene_box_alloc") fn box_alloc() *Box;
export @symbol("graphene_box_contains_box") fn box_contains_box(a: *Box, b: *Box) bool;
export @symbol("graphene_box_contains_point") fn box_contains_point(box: *Box, point: *Point3D) bool;
export @symbol("graphene_box_equal") fn box_equal(a: *Box, b: *Box) bool;
export @symbol("graphene_box_expand") fn box_expand(box: *Box, point: *Point3D, res: *Box) void;
export @symbol("graphene_box_expand_scalar") fn box_expand_scalar(box: *Box, scalar: f32, res: *Box) void;
export @symbol("graphene_box_expand_vec3") fn box_expand_vec3(box: *Box, vec: *Vec3, res: *Box) void;
export @symbol("graphene_box_free") fn box_free(box: *Box) void;
export @symbol("graphene_box_get_bounding_sphere") fn box_get_bounding_sphere(box: *Box, sphere: *Sphere) void;
export @symbol("graphene_box_get_center") fn box_get_center(box: *Box, center: *Point3D) void;
export @symbol("graphene_box_get_depth") fn box_get_depth(box: *Box) f32;
export @symbol("graphene_box_get_height") fn box_get_height(box: *Box) f32;
export @symbol("graphene_box_get_max") fn box_get_max(box: *Box, max: *Point3D) void;
export @symbol("graphene_box_get_min") fn box_get_min(box: *Box, min: *Point3D) void;
export @symbol("graphene_box_get_size") fn box_get_size(box: *Box, size_: *Vec3) void;
export @symbol("graphene_box_get_vertices") fn box_get_vertices(box: *Box, vertices: [8]Vec3) void;
export @symbol("graphene_box_get_width") fn box_get_width(box: *Box) f32;
export @symbol("graphene_box_init") fn box_init(box: *Box, min: *Point3D, max: *Point3D) *Box;
export @symbol("graphene_box_init_from_box") fn box_init_from_box(box: *Box, src: *Box) *Box;
export @symbol("graphene_box_init_from_points") fn box_init_from_points(box: *Box, n_points: uint, points: *Point3D) *Box;
export @symbol("graphene_box_init_from_vec3") fn box_init_from_vec3(box: *Box, min: *Vec3, max: *Vec3) *Box;
export @symbol("graphene_box_init_from_vectors") fn box_init_from_vectors(box: *Box, n_vectors: uint, vectors: *Vec3) *Box;
export @symbol("graphene_box_intersection") fn box_intersection(a: *Box, b: *Box, res: *Box) bool;
export @symbol("graphene_box_union") fn box_union(a: *Box, b: *Box, res: *Box) void;
export @symbol("graphene_box_empty") fn box_empty() *Box;
export @symbol("graphene_box_infinite") fn box_infinite() *Box;
export @symbol("graphene_box_minus_one") fn box_minus_one() *Box;
export @symbol("graphene_box_one") fn box_one() *Box;
export @symbol("graphene_box_one_minus_one") fn box_one_minus_one() *Box;
export @symbol("graphene_box_zero") fn box_zero() *Box;
export type Euler = struct {
	angles: Vec3,
	order: EulerOrder,
};
export @symbol("graphene_euler_alloc") fn euler_alloc() *Euler;
export @symbol("graphene_euler_equal") fn euler_equal(a: *Euler, b: *Euler) bool;
export @symbol("graphene_euler_free") fn euler_free(e: *Euler) void;
export @symbol("graphene_euler_get_alpha") fn euler_get_alpha(e: *Euler) f32;
export @symbol("graphene_euler_get_beta") fn euler_get_beta(e: *Euler) f32;
export @symbol("graphene_euler_get_gamma") fn euler_get_gamma(e: *Euler) f32;
export @symbol("graphene_euler_get_order") fn euler_get_order(e: *Euler) EulerOrder;
export @symbol("graphene_euler_get_x") fn euler_get_x(e: *Euler) f32;
export @symbol("graphene_euler_get_y") fn euler_get_y(e: *Euler) f32;
export @symbol("graphene_euler_get_z") fn euler_get_z(e: *Euler) f32;
export @symbol("graphene_euler_init") fn euler_init(e: *Euler, x: f32, y: f32, z: f32) *Euler;
export @symbol("graphene_euler_init_from_euler") fn euler_init_from_euler(e: *Euler, src: *Euler) *Euler;
export @symbol("graphene_euler_init_from_matrix") fn euler_init_from_matrix(e: *Euler, m: *Matrix, order: EulerOrder) *Euler;
export @symbol("graphene_euler_init_from_quaternion") fn euler_init_from_quaternion(e: *Euler, q: *Quaternion, order: EulerOrder) *Euler;
export @symbol("graphene_euler_init_from_radians") fn euler_init_from_radians(e: *Euler, x: f32, y: f32, z: f32, order: EulerOrder) *Euler;
export @symbol("graphene_euler_init_from_vec3") fn euler_init_from_vec3(e: *Euler, v: *Vec3, order: EulerOrder) *Euler;
export @symbol("graphene_euler_init_with_order") fn euler_init_with_order(e: *Euler, x: f32, y: f32, z: f32, order: EulerOrder) *Euler;
export @symbol("graphene_euler_reorder") fn euler_reorder(e: *Euler, order: EulerOrder, res: *Euler) void;
export @symbol("graphene_euler_to_matrix") fn euler_to_matrix(e: *Euler, res: *Matrix) void;
export @symbol("graphene_euler_to_quaternion") fn euler_to_quaternion(e: *Euler, res: *Quaternion) void;
export @symbol("graphene_euler_to_vec3") fn euler_to_vec3(e: *Euler, res: *Vec3) void;
export type Frustum = struct {
	planes: [6]Plane,
};
export @symbol("graphene_frustum_alloc") fn frustum_alloc() *Frustum;
export @symbol("graphene_frustum_contains_point") fn frustum_contains_point(f: *Frustum, point: *Point3D) bool;
export @symbol("graphene_frustum_equal") fn frustum_equal(a: *Frustum, b: *Frustum) bool;
export @symbol("graphene_frustum_free") fn frustum_free(f: *Frustum) void;
export @symbol("graphene_frustum_get_planes") fn frustum_get_planes(f: *Frustum, planes: [6]Plane) void;
export @symbol("graphene_frustum_init") fn frustum_init(f: *Frustum, p0: *Plane, p1: *Plane, p2: *Plane, p3: *Plane, p4: *Plane, p5: *Plane) *Frustum;
export @symbol("graphene_frustum_init_from_frustum") fn frustum_init_from_frustum(f: *Frustum, src: *Frustum) *Frustum;
export @symbol("graphene_frustum_init_from_matrix") fn frustum_init_from_matrix(f: *Frustum, matrix: *Matrix) *Frustum;
export @symbol("graphene_frustum_intersects_box") fn frustum_intersects_box(f: *Frustum, box: *Box) bool;
export @symbol("graphene_frustum_intersects_sphere") fn frustum_intersects_sphere(f: *Frustum, sphere: *Sphere) bool;
export type Matrix = struct {
	value: Simd4X4F,
};
export @symbol("graphene_matrix_alloc") fn matrix_alloc() *Matrix;
export @symbol("graphene_matrix_decompose") fn matrix_decompose(m: *Matrix, translate: *Vec3, scale: *Vec3, rotate: *Quaternion, shear: *Vec3, perspective: *Vec4) bool;
export @symbol("graphene_matrix_determinant") fn matrix_determinant(m: *Matrix) f32;
export @symbol("graphene_matrix_equal") fn matrix_equal(a: *Matrix, b: *Matrix) bool;
export @symbol("graphene_matrix_equal_fast") fn matrix_equal_fast(a: *Matrix, b: *Matrix) bool;
export @symbol("graphene_matrix_free") fn matrix_free(m: *Matrix) void;
export @symbol("graphene_matrix_get_row") fn matrix_get_row(m: *Matrix, index_: uint, res: *Vec4) void;
export @symbol("graphene_matrix_get_value") fn matrix_get_value(m: *Matrix, row: uint, col: uint) f32;
export @symbol("graphene_matrix_get_x_scale") fn matrix_get_x_scale(m: *Matrix) f32;
export @symbol("graphene_matrix_get_x_translation") fn matrix_get_x_translation(m: *Matrix) f32;
export @symbol("graphene_matrix_get_y_scale") fn matrix_get_y_scale(m: *Matrix) f32;
export @symbol("graphene_matrix_get_y_translation") fn matrix_get_y_translation(m: *Matrix) f32;
export @symbol("graphene_matrix_get_z_scale") fn matrix_get_z_scale(m: *Matrix) f32;
export @symbol("graphene_matrix_get_z_translation") fn matrix_get_z_translation(m: *Matrix) f32;
export @symbol("graphene_matrix_init_from_2d") fn matrix_init_from_2d(m: *Matrix, xx: f64, yx: f64, xy: f64, yy: f64, x_0: f64, y_0: f64) *Matrix;
export @symbol("graphene_matrix_init_from_float") fn matrix_init_from_float(m: *Matrix, v: [16]f32) *Matrix;
export @symbol("graphene_matrix_init_from_matrix") fn matrix_init_from_matrix(m: *Matrix, src: *Matrix) *Matrix;
export @symbol("graphene_matrix_init_from_vec4") fn matrix_init_from_vec4(m: *Matrix, v0: *Vec4, v1: *Vec4, v2: *Vec4, v3: *Vec4) *Matrix;
export @symbol("graphene_matrix_init_frustum") fn matrix_init_frustum(m: *Matrix, left: f32, right: f32, bottom: f32, top: f32, z_near: f32, z_far: f32) *Matrix;
export @symbol("graphene_matrix_init_identity") fn matrix_init_identity(m: *Matrix) *Matrix;
export @symbol("graphene_matrix_init_look_at") fn matrix_init_look_at(m: *Matrix, eye: *Vec3, center: *Vec3, up: *Vec3) *Matrix;
export @symbol("graphene_matrix_init_ortho") fn matrix_init_ortho(m: *Matrix, left: f32, right: f32, top: f32, bottom: f32, z_near: f32, z_far: f32) *Matrix;
export @symbol("graphene_matrix_init_perspective") fn matrix_init_perspective(m: *Matrix, fovy: f32, aspect: f32, z_near: f32, z_far: f32) *Matrix;
export @symbol("graphene_matrix_init_rotate") fn matrix_init_rotate(m: *Matrix, angle: f32, axis: *Vec3) *Matrix;
export @symbol("graphene_matrix_init_scale") fn matrix_init_scale(m: *Matrix, x: f32, y: f32, z: f32) *Matrix;
export @symbol("graphene_matrix_init_skew") fn matrix_init_skew(m: *Matrix, x_skew: f32, y_skew: f32) *Matrix;
export @symbol("graphene_matrix_init_translate") fn matrix_init_translate(m: *Matrix, p: *Point3D) *Matrix;
export @symbol("graphene_matrix_interpolate") fn matrix_interpolate(a: *Matrix, b: *Matrix, factor: f64, res: *Matrix) void;
export @symbol("graphene_matrix_inverse") fn matrix_inverse(m: *Matrix, res: *Matrix) bool;
export @symbol("graphene_matrix_is_2d") fn matrix_is_2d(m: *Matrix) bool;
export @symbol("graphene_matrix_is_backface_visible") fn matrix_is_backface_visible(m: *Matrix) bool;
export @symbol("graphene_matrix_is_identity") fn matrix_is_identity(m: *Matrix) bool;
export @symbol("graphene_matrix_is_singular") fn matrix_is_singular(m: *Matrix) bool;
export @symbol("graphene_matrix_multiply") fn matrix_multiply(a: *Matrix, b: *Matrix, res: *Matrix) void;
export @symbol("graphene_matrix_near") fn matrix_near(a: *Matrix, b: *Matrix, epsilon: f32) bool;
export @symbol("graphene_matrix_normalize") fn matrix_normalize(m: *Matrix, res: *Matrix) void;
export @symbol("graphene_matrix_perspective") fn matrix_perspective(m: *Matrix, depth: f32, res: *Matrix) void;
export @symbol("graphene_matrix_print") fn matrix_print(m: *Matrix) void;
export @symbol("graphene_matrix_project_point") fn matrix_project_point(m: *Matrix, p: *Point, res: *Point) void;
export @symbol("graphene_matrix_project_rect") fn matrix_project_rect(m: *Matrix, r: *Rect, res: *Quad) void;
export @symbol("graphene_matrix_project_rect_bounds") fn matrix_project_rect_bounds(m: *Matrix, r: *Rect, res: *Rect) void;
export @symbol("graphene_matrix_rotate") fn matrix_rotate(m: *Matrix, angle: f32, axis: *Vec3) void;
export @symbol("graphene_matrix_rotate_euler") fn matrix_rotate_euler(m: *Matrix, e: *Euler) void;
export @symbol("graphene_matrix_rotate_quaternion") fn matrix_rotate_quaternion(m: *Matrix, q: *Quaternion) void;
export @symbol("graphene_matrix_rotate_x") fn matrix_rotate_x(m: *Matrix, angle: f32) void;
export @symbol("graphene_matrix_rotate_y") fn matrix_rotate_y(m: *Matrix, angle: f32) void;
export @symbol("graphene_matrix_rotate_z") fn matrix_rotate_z(m: *Matrix, angle: f32) void;
export @symbol("graphene_matrix_scale") fn matrix_scale(m: *Matrix, factor_x: f32, factor_y: f32, factor_z: f32) void;
export @symbol("graphene_matrix_skew_xy") fn matrix_skew_xy(m: *Matrix, factor: f32) void;
export @symbol("graphene_matrix_skew_xz") fn matrix_skew_xz(m: *Matrix, factor: f32) void;
export @symbol("graphene_matrix_skew_yz") fn matrix_skew_yz(m: *Matrix, factor: f32) void;
export @symbol("graphene_matrix_to_2d") fn matrix_to_2d(m: *Matrix, xx: *f64, yx: *f64, xy: *f64, yy: *f64, x_0: *f64, y_0: *f64) bool;
export @symbol("graphene_matrix_to_float") fn matrix_to_float(m: *Matrix, v: [16]f32) void;
export @symbol("graphene_matrix_transform_bounds") fn matrix_transform_bounds(m: *Matrix, r: *Rect, res: *Rect) void;
export @symbol("graphene_matrix_transform_box") fn matrix_transform_box(m: *Matrix, b: *Box, res: *Box) void;
export @symbol("graphene_matrix_transform_point") fn matrix_transform_point(m: *Matrix, p: *Point, res: *Point) void;
export @symbol("graphene_matrix_transform_point3d") fn matrix_transform_point3d(m: *Matrix, p: *Point3D, res: *Point3D) void;
export @symbol("graphene_matrix_transform_ray") fn matrix_transform_ray(m: *Matrix, r: *Ray, res: *Ray) void;
export @symbol("graphene_matrix_transform_rect") fn matrix_transform_rect(m: *Matrix, r: *Rect, res: *Quad) void;
export @symbol("graphene_matrix_transform_sphere") fn matrix_transform_sphere(m: *Matrix, s: *Sphere, res: *Sphere) void;
export @symbol("graphene_matrix_transform_vec3") fn matrix_transform_vec3(m: *Matrix, v: *Vec3, res: *Vec3) void;
export @symbol("graphene_matrix_transform_vec4") fn matrix_transform_vec4(m: *Matrix, v: *Vec4, res: *Vec4) void;
export @symbol("graphene_matrix_translate") fn matrix_translate(m: *Matrix, pos: *Point3D) void;
export @symbol("graphene_matrix_transpose") fn matrix_transpose(m: *Matrix, res: *Matrix) void;
export @symbol("graphene_matrix_unproject_point3d") fn matrix_unproject_point3d(projection: *Matrix, modelview: *Matrix, point: *Point3D, res: *Point3D) void;
export @symbol("graphene_matrix_untransform_bounds") fn matrix_untransform_bounds(m: *Matrix, r: *Rect, bounds: *Rect, res: *Rect) void;
export @symbol("graphene_matrix_untransform_point") fn matrix_untransform_point(m: *Matrix, p: *Point, bounds: *Rect, res: *Point) bool;
export type Plane = struct {
	normal: Vec3,
	constant: f32,
};
export @symbol("graphene_plane_alloc") fn plane_alloc() *Plane;
export @symbol("graphene_plane_distance") fn plane_distance(p: *Plane, point: *Point3D) f32;
export @symbol("graphene_plane_equal") fn plane_equal(a: *Plane, b: *Plane) bool;
export @symbol("graphene_plane_free") fn plane_free(p: *Plane) void;
export @symbol("graphene_plane_get_constant") fn plane_get_constant(p: *Plane) f32;
export @symbol("graphene_plane_get_normal") fn plane_get_normal(p: *Plane, normal: *Vec3) void;
export @symbol("graphene_plane_init") fn plane_init(p: *Plane, normal: *Vec3, constant: f32) *Plane;
export @symbol("graphene_plane_init_from_plane") fn plane_init_from_plane(p: *Plane, src: *Plane) *Plane;
export @symbol("graphene_plane_init_from_point") fn plane_init_from_point(p: *Plane, normal: *Vec3, point: *Point3D) *Plane;
export @symbol("graphene_plane_init_from_points") fn plane_init_from_points(p: *Plane, a: *Point3D, b: *Point3D, c: *Point3D) *Plane;
export @symbol("graphene_plane_init_from_vec4") fn plane_init_from_vec4(p: *Plane, src: *Vec4) *Plane;
export @symbol("graphene_plane_negate") fn plane_negate(p: *Plane, res: *Plane) void;
export @symbol("graphene_plane_normalize") fn plane_normalize(p: *Plane, res: *Plane) void;
export @symbol("graphene_plane_transform") fn plane_transform(p: *Plane, matrix: *Matrix, normal_matrix: *Matrix, res: *Plane) void;
export type Point = struct {
	x: f32,
	y: f32,
};
export @symbol("graphene_point_alloc") fn point_alloc() *Point;
export @symbol("graphene_point_distance") fn point_distance(a: *Point, b: *Point, d_x: *f32, d_y: *f32) f32;
export @symbol("graphene_point_equal") fn point_equal(a: *Point, b: *Point) bool;
export @symbol("graphene_point_free") fn point_free(p: *Point) void;
export @symbol("graphene_point_init") fn point_init(p: *Point, x: f32, y: f32) *Point;
export @symbol("graphene_point_init_from_point") fn point_init_from_point(p: *Point, src: *Point) *Point;
export @symbol("graphene_point_init_from_vec2") fn point_init_from_vec2(p: *Point, src: *Vec2) *Point;
export @symbol("graphene_point_interpolate") fn point_interpolate(a: *Point, b: *Point, factor: f64, res: *Point) void;
export @symbol("graphene_point_near") fn point_near(a: *Point, b: *Point, epsilon: f32) bool;
export @symbol("graphene_point_to_vec2") fn point_to_vec2(p: *Point, v: *Vec2) void;
export @symbol("graphene_point_zero") fn point_zero() *Point;
export type Point3D = struct {
	x: f32,
	y: f32,
	z: f32,
};
export @symbol("graphene_point3d_alloc") fn point3_d_alloc() *Point3D;
export @symbol("graphene_point3d_cross") fn point3_d_cross(a: *Point3D, b: *Point3D, res: *Point3D) void;
export @symbol("graphene_point3d_distance") fn point3_d_distance(a: *Point3D, b: *Point3D, delta: *Vec3) f32;
export @symbol("graphene_point3d_dot") fn point3_d_dot(a: *Point3D, b: *Point3D) f32;
export @symbol("graphene_point3d_equal") fn point3_d_equal(a: *Point3D, b: *Point3D) bool;
export @symbol("graphene_point3d_free") fn point3_d_free(p: *Point3D) void;
export @symbol("graphene_point3d_init") fn point3_d_init(p: *Point3D, x: f32, y: f32, z: f32) *Point3D;
export @symbol("graphene_point3d_init_from_point") fn point3_d_init_from_point(p: *Point3D, src: *Point3D) *Point3D;
export @symbol("graphene_point3d_init_from_vec3") fn point3_d_init_from_vec3(p: *Point3D, v: *Vec3) *Point3D;
export @symbol("graphene_point3d_interpolate") fn point3_d_interpolate(a: *Point3D, b: *Point3D, factor: f64, res: *Point3D) void;
export @symbol("graphene_point3d_length") fn point3_d_length(p: *Point3D) f32;
export @symbol("graphene_point3d_near") fn point3_d_near(a: *Point3D, b: *Point3D, epsilon: f32) bool;
export @symbol("graphene_point3d_normalize") fn point3_d_normalize(p: *Point3D, res: *Point3D) void;
export @symbol("graphene_point3d_normalize_viewport") fn point3_d_normalize_viewport(p: *Point3D, viewport: *Rect, z_near: f32, z_far: f32, res: *Point3D) void;
export @symbol("graphene_point3d_scale") fn point3_d_scale(p: *Point3D, factor: f32, res: *Point3D) void;
export @symbol("graphene_point3d_to_vec3") fn point3_d_to_vec3(p: *Point3D, v: *Vec3) void;
export @symbol("graphene_point3d_zero") fn point3_d_zero() *Point3D;
export type Quad = struct {
	points: [4]Point,
};
export @symbol("graphene_quad_alloc") fn quad_alloc() *Quad;
export @symbol("graphene_quad_bounds") fn quad_bounds(q: *Quad, r: *Rect) void;
export @symbol("graphene_quad_contains") fn quad_contains(q: *Quad, p: *Point) bool;
export @symbol("graphene_quad_free") fn quad_free(q: *Quad) void;
export @symbol("graphene_quad_get_point") fn quad_get_point(q: *Quad, index_: uint) *Point;
export @symbol("graphene_quad_init") fn quad_init(q: *Quad, p1: *Point, p2: *Point, p3: *Point, p4: *Point) *Quad;
export @symbol("graphene_quad_init_from_points") fn quad_init_from_points(q: *Quad, points: [4]Point) *Quad;
export @symbol("graphene_quad_init_from_rect") fn quad_init_from_rect(q: *Quad, r: *Rect) *Quad;
export type Quaternion = struct {
	x: f32,
	y: f32,
	z: f32,
	w: f32,
};
export @symbol("graphene_quaternion_alloc") fn quaternion_alloc() *Quaternion;
export @symbol("graphene_quaternion_add") fn quaternion_add(a: *Quaternion, b: *Quaternion, res: *Quaternion) void;
export @symbol("graphene_quaternion_dot") fn quaternion_dot(a: *Quaternion, b: *Quaternion) f32;
export @symbol("graphene_quaternion_equal") fn quaternion_equal(a: *Quaternion, b: *Quaternion) bool;
export @symbol("graphene_quaternion_free") fn quaternion_free(q: *Quaternion) void;
export @symbol("graphene_quaternion_init") fn quaternion_init(q: *Quaternion, x: f32, y: f32, z: f32, w: f32) *Quaternion;
export @symbol("graphene_quaternion_init_from_angle_vec3") fn quaternion_init_from_angle_vec3(q: *Quaternion, angle: f32, axis: *Vec3) *Quaternion;
export @symbol("graphene_quaternion_init_from_angles") fn quaternion_init_from_angles(q: *Quaternion, deg_x: f32, deg_y: f32, deg_z: f32) *Quaternion;
export @symbol("graphene_quaternion_init_from_euler") fn quaternion_init_from_euler(q: *Quaternion, e: *Euler) *Quaternion;
export @symbol("graphene_quaternion_init_from_matrix") fn quaternion_init_from_matrix(q: *Quaternion, m: *Matrix) *Quaternion;
export @symbol("graphene_quaternion_init_from_quaternion") fn quaternion_init_from_quaternion(q: *Quaternion, src: *Quaternion) *Quaternion;
export @symbol("graphene_quaternion_init_from_radians") fn quaternion_init_from_radians(q: *Quaternion, rad_x: f32, rad_y: f32, rad_z: f32) *Quaternion;
export @symbol("graphene_quaternion_init_from_vec4") fn quaternion_init_from_vec4(q: *Quaternion, src: *Vec4) *Quaternion;
export @symbol("graphene_quaternion_init_identity") fn quaternion_init_identity(q: *Quaternion) *Quaternion;
export @symbol("graphene_quaternion_invert") fn quaternion_invert(q: *Quaternion, res: *Quaternion) void;
export @symbol("graphene_quaternion_multiply") fn quaternion_multiply(a: *Quaternion, b: *Quaternion, res: *Quaternion) void;
export @symbol("graphene_quaternion_normalize") fn quaternion_normalize(q: *Quaternion, res: *Quaternion) void;
export @symbol("graphene_quaternion_scale") fn quaternion_scale(q: *Quaternion, factor: f32, res: *Quaternion) void;
export @symbol("graphene_quaternion_slerp") fn quaternion_slerp(a: *Quaternion, b: *Quaternion, factor: f32, res: *Quaternion) void;
export @symbol("graphene_quaternion_to_angle_vec3") fn quaternion_to_angle_vec3(q: *Quaternion, angle: *f32, axis: *Vec3) void;
export @symbol("graphene_quaternion_to_angles") fn quaternion_to_angles(q: *Quaternion, deg_x: *f32, deg_y: *f32, deg_z: *f32) void;
export @symbol("graphene_quaternion_to_matrix") fn quaternion_to_matrix(q: *Quaternion, m: *Matrix) void;
export @symbol("graphene_quaternion_to_radians") fn quaternion_to_radians(q: *Quaternion, rad_x: *f32, rad_y: *f32, rad_z: *f32) void;
export @symbol("graphene_quaternion_to_vec4") fn quaternion_to_vec4(q: *Quaternion, res: *Vec4) void;
export type Ray = struct {
	origin: Vec3,
	direction: Vec3,
};
export @symbol("graphene_ray_alloc") fn ray_alloc() *Ray;
export @symbol("graphene_ray_equal") fn ray_equal(a: *Ray, b: *Ray) bool;
export @symbol("graphene_ray_free") fn ray_free(r: *Ray) void;
export @symbol("graphene_ray_get_closest_point_to_point") fn ray_get_closest_point_to_point(r: *Ray, p: *Point3D, res: *Point3D) void;
export @symbol("graphene_ray_get_direction") fn ray_get_direction(r: *Ray, direction: *Vec3) void;
export @symbol("graphene_ray_get_distance_to_plane") fn ray_get_distance_to_plane(r: *Ray, p: *Plane) f32;
export @symbol("graphene_ray_get_distance_to_point") fn ray_get_distance_to_point(r: *Ray, p: *Point3D) f32;
export @symbol("graphene_ray_get_origin") fn ray_get_origin(r: *Ray, origin: *Point3D) void;
export @symbol("graphene_ray_get_position_at") fn ray_get_position_at(r: *Ray, t: f32, position: *Point3D) void;
export @symbol("graphene_ray_init") fn ray_init(r: *Ray, origin: *Point3D, direction: *Vec3) *Ray;
export @symbol("graphene_ray_init_from_ray") fn ray_init_from_ray(r: *Ray, src: *Ray) *Ray;
export @symbol("graphene_ray_init_from_vec3") fn ray_init_from_vec3(r: *Ray, origin: *Vec3, direction: *Vec3) *Ray;
export @symbol("graphene_ray_intersect_box") fn ray_intersect_box(r: *Ray, b: *Box, t_out: *f32) RayIntersectionKind;
export @symbol("graphene_ray_intersect_sphere") fn ray_intersect_sphere(r: *Ray, s: *Sphere, t_out: *f32) RayIntersectionKind;
export @symbol("graphene_ray_intersect_triangle") fn ray_intersect_triangle(r: *Ray, t: *Triangle, t_out: *f32) RayIntersectionKind;
export @symbol("graphene_ray_intersects_box") fn ray_intersects_box(r: *Ray, b: *Box) bool;
export @symbol("graphene_ray_intersects_sphere") fn ray_intersects_sphere(r: *Ray, s: *Sphere) bool;
export @symbol("graphene_ray_intersects_triangle") fn ray_intersects_triangle(r: *Ray, t: *Triangle) bool;
export type Rect = struct {
	origin: Point,
	size_: Size,
};
export @symbol("graphene_rect_contains_point") fn rect_contains_point(r: *Rect, p: *Point) bool;
export @symbol("graphene_rect_contains_rect") fn rect_contains_rect(a: *Rect, b: *Rect) bool;
export @symbol("graphene_rect_equal") fn rect_equal(a: *Rect, b: *Rect) bool;
export @symbol("graphene_rect_expand") fn rect_expand(r: *Rect, p: *Point, res: *Rect) void;
export @symbol("graphene_rect_free") fn rect_free(r: *Rect) void;
export @symbol("graphene_rect_get_area") fn rect_get_area(r: *Rect) f32;
export @symbol("graphene_rect_get_bottom_left") fn rect_get_bottom_left(r: *Rect, p: *Point) void;
export @symbol("graphene_rect_get_bottom_right") fn rect_get_bottom_right(r: *Rect, p: *Point) void;
export @symbol("graphene_rect_get_center") fn rect_get_center(r: *Rect, p: *Point) void;
export @symbol("graphene_rect_get_height") fn rect_get_height(r: *Rect) f32;
export @symbol("graphene_rect_get_top_left") fn rect_get_top_left(r: *Rect, p: *Point) void;
export @symbol("graphene_rect_get_top_right") fn rect_get_top_right(r: *Rect, p: *Point) void;
export @symbol("graphene_rect_get_vertices") fn rect_get_vertices(r: *Rect, vertices: [4]Vec2) void;
export @symbol("graphene_rect_get_width") fn rect_get_width(r: *Rect) f32;
export @symbol("graphene_rect_get_x") fn rect_get_x(r: *Rect) f32;
export @symbol("graphene_rect_get_y") fn rect_get_y(r: *Rect) f32;
export @symbol("graphene_rect_init") fn rect_init(r: *Rect, x: f32, y: f32, width: f32, height: f32) *Rect;
export @symbol("graphene_rect_init_from_rect") fn rect_init_from_rect(r: *Rect, src: *Rect) *Rect;
export @symbol("graphene_rect_inset") fn rect_inset(r: *Rect, d_x: f32, d_y: f32) *Rect;
export @symbol("graphene_rect_inset_r") fn rect_inset_r(r: *Rect, d_x: f32, d_y: f32, res: *Rect) void;
export @symbol("graphene_rect_interpolate") fn rect_interpolate(a: *Rect, b: *Rect, factor: f64, res: *Rect) void;
export @symbol("graphene_rect_intersection") fn rect_intersection(a: *Rect, b: *Rect, res: *Rect) bool;
export @symbol("graphene_rect_normalize") fn rect_normalize(r: *Rect) *Rect;
export @symbol("graphene_rect_normalize_r") fn rect_normalize_r(r: *Rect, res: *Rect) void;
export @symbol("graphene_rect_offset") fn rect_offset(r: *Rect, d_x: f32, d_y: f32) *Rect;
export @symbol("graphene_rect_offset_r") fn rect_offset_r(r: *Rect, d_x: f32, d_y: f32, res: *Rect) void;
export @symbol("graphene_rect_round") fn rect_round(r: *Rect, res: *Rect) void;
export @symbol("graphene_rect_round_extents") fn rect_round_extents(r: *Rect, res: *Rect) void;
export @symbol("graphene_rect_round_to_pixel") fn rect_round_to_pixel(r: *Rect) *Rect;
export @symbol("graphene_rect_scale") fn rect_scale(r: *Rect, s_h: f32, s_v: f32, res: *Rect) void;
export @symbol("graphene_rect_union") fn rect_union(a: *Rect, b: *Rect, res: *Rect) void;
export @symbol("graphene_rect_alloc") fn rect_alloc() *Rect;
export @symbol("graphene_rect_zero") fn rect_zero() *Rect;
export type Simd4F = struct {
	x: f32,
	y: f32,
	z: f32,
	w: f32,
};
export type Simd4X4F = struct {
	x: Simd4F,
	y: Simd4F,
	z: Simd4F,
	w: Simd4F,
};
export type Size = struct {
	width: f32,
	height: f32,
};
export @symbol("graphene_size_alloc") fn size_alloc() *Size;
export @symbol("graphene_size_equal") fn size_equal(a: *Size, b: *Size) bool;
export @symbol("graphene_size_free") fn size_free(s: *Size) void;
export @symbol("graphene_size_init") fn size_init(s: *Size, width: f32, height: f32) *Size;
export @symbol("graphene_size_init_from_size") fn size_init_from_size(s: *Size, src: *Size) *Size;
export @symbol("graphene_size_interpolate") fn size_interpolate(a: *Size, b: *Size, factor: f64, res: *Size) void;
export @symbol("graphene_size_scale") fn size_scale(s: *Size, factor: f32, res: *Size) void;
export @symbol("graphene_size_zero") fn size_zero() *Size;
export type Sphere = struct {
	center: Vec3,
	radius: f32,
};
export @symbol("graphene_sphere_alloc") fn sphere_alloc() *Sphere;
export @symbol("graphene_sphere_contains_point") fn sphere_contains_point(s: *Sphere, point: *Point3D) bool;
export @symbol("graphene_sphere_distance") fn sphere_distance(s: *Sphere, point: *Point3D) f32;
export @symbol("graphene_sphere_equal") fn sphere_equal(a: *Sphere, b: *Sphere) bool;
export @symbol("graphene_sphere_free") fn sphere_free(s: *Sphere) void;
export @symbol("graphene_sphere_get_bounding_box") fn sphere_get_bounding_box(s: *Sphere, box: *Box) void;
export @symbol("graphene_sphere_get_center") fn sphere_get_center(s: *Sphere, center: *Point3D) void;
export @symbol("graphene_sphere_get_radius") fn sphere_get_radius(s: *Sphere) f32;
export @symbol("graphene_sphere_init") fn sphere_init(s: *Sphere, center: *Point3D, radius: f32) *Sphere;
export @symbol("graphene_sphere_init_from_points") fn sphere_init_from_points(s: *Sphere, n_points: uint, points: *Point3D, center: *Point3D) *Sphere;
export @symbol("graphene_sphere_init_from_vectors") fn sphere_init_from_vectors(s: *Sphere, n_vectors: uint, vectors: *Vec3, center: *Point3D) *Sphere;
export @symbol("graphene_sphere_is_empty") fn sphere_is_empty(s: *Sphere) bool;
export @symbol("graphene_sphere_translate") fn sphere_translate(s: *Sphere, point: *Point3D, res: *Sphere) void;
export type Triangle = struct {
	a: Vec3,
	b: Vec3,
	c: Vec3,
};
export @symbol("graphene_triangle_alloc") fn triangle_alloc() *Triangle;
export @symbol("graphene_triangle_contains_point") fn triangle_contains_point(t: *Triangle, p: *Point3D) bool;
export @symbol("graphene_triangle_equal") fn triangle_equal(a: *Triangle, b: *Triangle) bool;
export @symbol("graphene_triangle_free") fn triangle_free(t: *Triangle) void;
export @symbol("graphene_triangle_get_area") fn triangle_get_area(t: *Triangle) f32;
export @symbol("graphene_triangle_get_barycoords") fn triangle_get_barycoords(t: *Triangle, p: *Point3D, res: *Vec2) bool;
export @symbol("graphene_triangle_get_bounding_box") fn triangle_get_bounding_box(t: *Triangle, res: *Box) void;
export @symbol("graphene_triangle_get_midpoint") fn triangle_get_midpoint(t: *Triangle, res: *Point3D) void;
export @symbol("graphene_triangle_get_normal") fn triangle_get_normal(t: *Triangle, res: *Vec3) void;
export @symbol("graphene_triangle_get_plane") fn triangle_get_plane(t: *Triangle, res: *Plane) void;
export @symbol("graphene_triangle_get_points") fn triangle_get_points(t: *Triangle, a: *Point3D, b: *Point3D, c: *Point3D) void;
export @symbol("graphene_triangle_get_uv") fn triangle_get_uv(t: *Triangle, p: *Point3D, uv_a: *Vec2, uv_b: *Vec2, uv_c: *Vec2, res: *Vec2) bool;
export @symbol("graphene_triangle_get_vertices") fn triangle_get_vertices(t: *Triangle, a: *Vec3, b: *Vec3, c: *Vec3) void;
export @symbol("graphene_triangle_init_from_float") fn triangle_init_from_float(t: *Triangle, a: [3]f32, b: [3]f32, c: [3]f32) *Triangle;
export @symbol("graphene_triangle_init_from_point3d") fn triangle_init_from_point3d(t: *Triangle, a: *Point3D, b: *Point3D, c: *Point3D) *Triangle;
export @symbol("graphene_triangle_init_from_vec3") fn triangle_init_from_vec3(t: *Triangle, a: *Vec3, b: *Vec3, c: *Vec3) *Triangle;
export type Vec2 = struct {
	value: Simd4F,
};
export @symbol("graphene_vec2_alloc") fn vec2_alloc() *Vec2;
export @symbol("graphene_vec2_add") fn vec2_add(a: *Vec2, b: *Vec2, res: *Vec2) void;
export @symbol("graphene_vec2_divide") fn vec2_divide(a: *Vec2, b: *Vec2, res: *Vec2) void;
export @symbol("graphene_vec2_dot") fn vec2_dot(a: *Vec2, b: *Vec2) f32;
export @symbol("graphene_vec2_equal") fn vec2_equal(v1: *Vec2, v2: *Vec2) bool;
export @symbol("graphene_vec2_free") fn vec2_free(v: *Vec2) void;
export @symbol("graphene_vec2_get_x") fn vec2_get_x(v: *Vec2) f32;
export @symbol("graphene_vec2_get_y") fn vec2_get_y(v: *Vec2) f32;
export @symbol("graphene_vec2_init") fn vec2_init(v: *Vec2, x: f32, y: f32) *Vec2;
export @symbol("graphene_vec2_init_from_float") fn vec2_init_from_float(v: *Vec2, src: [2]f32) *Vec2;
export @symbol("graphene_vec2_init_from_vec2") fn vec2_init_from_vec2(v: *Vec2, src: *Vec2) *Vec2;
export @symbol("graphene_vec2_interpolate") fn vec2_interpolate(v1: *Vec2, v2: *Vec2, factor: f64, res: *Vec2) void;
export @symbol("graphene_vec2_length") fn vec2_length(v: *Vec2) f32;
export @symbol("graphene_vec2_max") fn vec2_max(a: *Vec2, b: *Vec2, res: *Vec2) void;
export @symbol("graphene_vec2_min") fn vec2_min(a: *Vec2, b: *Vec2, res: *Vec2) void;
export @symbol("graphene_vec2_multiply") fn vec2_multiply(a: *Vec2, b: *Vec2, res: *Vec2) void;
export @symbol("graphene_vec2_near") fn vec2_near(v1: *Vec2, v2: *Vec2, epsilon: f32) bool;
export @symbol("graphene_vec2_negate") fn vec2_negate(v: *Vec2, res: *Vec2) void;
export @symbol("graphene_vec2_normalize") fn vec2_normalize(v: *Vec2, res: *Vec2) void;
export @symbol("graphene_vec2_scale") fn vec2_scale(v: *Vec2, factor: f32, res: *Vec2) void;
export @symbol("graphene_vec2_subtract") fn vec2_subtract(a: *Vec2, b: *Vec2, res: *Vec2) void;
export @symbol("graphene_vec2_to_float") fn vec2_to_float(v: *Vec2, dest: [2]f32) void;
export @symbol("graphene_vec2_one") fn vec2_one() *Vec2;
export @symbol("graphene_vec2_x_axis") fn vec2_x_axis() *Vec2;
export @symbol("graphene_vec2_y_axis") fn vec2_y_axis() *Vec2;
export @symbol("graphene_vec2_zero") fn vec2_zero() *Vec2;
export type Vec3 = struct {
	value: Simd4F,
};
export @symbol("graphene_vec3_alloc") fn vec3_alloc() *Vec3;
export @symbol("graphene_vec3_add") fn vec3_add(a: *Vec3, b: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_cross") fn vec3_cross(a: *Vec3, b: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_divide") fn vec3_divide(a: *Vec3, b: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_dot") fn vec3_dot(a: *Vec3, b: *Vec3) f32;
export @symbol("graphene_vec3_equal") fn vec3_equal(v1: *Vec3, v2: *Vec3) bool;
export @symbol("graphene_vec3_free") fn vec3_free(v: *Vec3) void;
export @symbol("graphene_vec3_get_x") fn vec3_get_x(v: *Vec3) f32;
export @symbol("graphene_vec3_get_xy") fn vec3_get_xy(v: *Vec3, res: *Vec2) void;
export @symbol("graphene_vec3_get_xy0") fn vec3_get_xy0(v: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_get_xyz0") fn vec3_get_xyz0(v: *Vec3, res: *Vec4) void;
export @symbol("graphene_vec3_get_xyz1") fn vec3_get_xyz1(v: *Vec3, res: *Vec4) void;
export @symbol("graphene_vec3_get_xyzw") fn vec3_get_xyzw(v: *Vec3, w: f32, res: *Vec4) void;
export @symbol("graphene_vec3_get_y") fn vec3_get_y(v: *Vec3) f32;
export @symbol("graphene_vec3_get_z") fn vec3_get_z(v: *Vec3) f32;
export @symbol("graphene_vec3_init") fn vec3_init(v: *Vec3, x: f32, y: f32, z: f32) *Vec3;
export @symbol("graphene_vec3_init_from_float") fn vec3_init_from_float(v: *Vec3, src: [3]f32) *Vec3;
export @symbol("graphene_vec3_init_from_vec3") fn vec3_init_from_vec3(v: *Vec3, src: *Vec3) *Vec3;
export @symbol("graphene_vec3_interpolate") fn vec3_interpolate(v1: *Vec3, v2: *Vec3, factor: f64, res: *Vec3) void;
export @symbol("graphene_vec3_length") fn vec3_length(v: *Vec3) f32;
export @symbol("graphene_vec3_max") fn vec3_max(a: *Vec3, b: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_min") fn vec3_min(a: *Vec3, b: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_multiply") fn vec3_multiply(a: *Vec3, b: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_near") fn vec3_near(v1: *Vec3, v2: *Vec3, epsilon: f32) bool;
export @symbol("graphene_vec3_negate") fn vec3_negate(v: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_normalize") fn vec3_normalize(v: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_scale") fn vec3_scale(v: *Vec3, factor: f32, res: *Vec3) void;
export @symbol("graphene_vec3_subtract") fn vec3_subtract(a: *Vec3, b: *Vec3, res: *Vec3) void;
export @symbol("graphene_vec3_to_float") fn vec3_to_float(v: *Vec3, dest: [3]f32) void;
export @symbol("graphene_vec3_one") fn vec3_one() *Vec3;
export @symbol("graphene_vec3_x_axis") fn vec3_x_axis() *Vec3;
export @symbol("graphene_vec3_y_axis") fn vec3_y_axis() *Vec3;
export @symbol("graphene_vec3_z_axis") fn vec3_z_axis() *Vec3;
export @symbol("graphene_vec3_zero") fn vec3_zero() *Vec3;
export type Vec4 = struct {
	value: Simd4F,
};
export @symbol("graphene_vec4_alloc") fn vec4_alloc() *Vec4;
export @symbol("graphene_vec4_add") fn vec4_add(a: *Vec4, b: *Vec4, res: *Vec4) void;
export @symbol("graphene_vec4_divide") fn vec4_divide(a: *Vec4, b: *Vec4, res: *Vec4) void;
export @symbol("graphene_vec4_dot") fn vec4_dot(a: *Vec4, b: *Vec4) f32;
export @symbol("graphene_vec4_equal") fn vec4_equal(v1: *Vec4, v2: *Vec4) bool;
export @symbol("graphene_vec4_free") fn vec4_free(v: *Vec4) void;
export @symbol("graphene_vec4_get_w") fn vec4_get_w(v: *Vec4) f32;
export @symbol("graphene_vec4_get_x") fn vec4_get_x(v: *Vec4) f32;
export @symbol("graphene_vec4_get_xy") fn vec4_get_xy(v: *Vec4, res: *Vec2) void;
export @symbol("graphene_vec4_get_xyz") fn vec4_get_xyz(v: *Vec4, res: *Vec3) void;
export @symbol("graphene_vec4_get_y") fn vec4_get_y(v: *Vec4) f32;
export @symbol("graphene_vec4_get_z") fn vec4_get_z(v: *Vec4) f32;
export @symbol("graphene_vec4_init") fn vec4_init(v: *Vec4, x: f32, y: f32, z: f32, w: f32) *Vec4;
export @symbol("graphene_vec4_init_from_float") fn vec4_init_from_float(v: *Vec4, src: [4]f32) *Vec4;
export @symbol("graphene_vec4_init_from_vec2") fn vec4_init_from_vec2(v: *Vec4, src: *Vec2, z: f32, w: f32) *Vec4;
export @symbol("graphene_vec4_init_from_vec3") fn vec4_init_from_vec3(v: *Vec4, src: *Vec3, w: f32) *Vec4;
export @symbol("graphene_vec4_init_from_vec4") fn vec4_init_from_vec4(v: *Vec4, src: *Vec4) *Vec4;
export @symbol("graphene_vec4_interpolate") fn vec4_interpolate(v1: *Vec4, v2: *Vec4, factor: f64, res: *Vec4) void;
export @symbol("graphene_vec4_length") fn vec4_length(v: *Vec4) f32;
export @symbol("graphene_vec4_max") fn vec4_max(a: *Vec4, b: *Vec4, res: *Vec4) void;
export @symbol("graphene_vec4_min") fn vec4_min(a: *Vec4, b: *Vec4, res: *Vec4) void;
export @symbol("graphene_vec4_multiply") fn vec4_multiply(a: *Vec4, b: *Vec4, res: *Vec4) void;
export @symbol("graphene_vec4_near") fn vec4_near(v1: *Vec4, v2: *Vec4, epsilon: f32) bool;
export @symbol("graphene_vec4_negate") fn vec4_negate(v: *Vec4, res: *Vec4) void;
export @symbol("graphene_vec4_normalize") fn vec4_normalize(v: *Vec4, res: *Vec4) void;
export @symbol("graphene_vec4_scale") fn vec4_scale(v: *Vec4, factor: f32, res: *Vec4) void;
export @symbol("graphene_vec4_subtract") fn vec4_subtract(a: *Vec4, b: *Vec4, res: *Vec4) void;
export @symbol("graphene_vec4_to_float") fn vec4_to_float(v: *Vec4, dest: [4]f32) void;
export @symbol("graphene_vec4_one") fn vec4_one() *Vec4;
export @symbol("graphene_vec4_w_axis") fn vec4_w_axis() *Vec4;
export @symbol("graphene_vec4_x_axis") fn vec4_x_axis() *Vec4;
export @symbol("graphene_vec4_y_axis") fn vec4_y_axis() *Vec4;
export @symbol("graphene_vec4_z_axis") fn vec4_z_axis() *Vec4;
export @symbol("graphene_vec4_zero") fn vec4_zero() *Vec4;
export type EulerOrder = enum uint {
	DEFAULT = -1,
	XYZ = 0,
	YZX = 1,
	ZXY = 2,
	XZY = 3,
	YXZ = 4,
	ZYX = 5,
	SXYZ = 6,
	SXYX = 7,
	SXZY = 8,
	SXZX = 9,
	SYZX = 10,
	SYZY = 11,
	SYXZ = 12,
	SYXY = 13,
	SZXY = 14,
	SZXZ = 15,
	SZYX = 16,
	SZYZ = 17,
	RZYX = 18,
	RXYX = 19,
	RYZX = 20,
	RXZX = 21,
	RXZY = 22,
	RYZY = 23,
	RZXY = 24,
	RYXY = 25,
	RYXZ = 26,
	RZXZ = 27,
	RXYZ = 28,
	RZYZ = 29,
};
export type RayIntersectionKind = enum uint {
	NONE = 0,
	ENTER = 1,
	LEAVE = 2,
};
