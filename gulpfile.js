var path = require('path'),
    gulp = require('gulp'),
    jshint = require('gulp-jshint');

var src = function (p) { return path.join('src', p || ''); },
    dest = function (p) { return path.join('target', p || ''); },
    bower = function (c, p) { return path.join('bower_components', c, p); };

gulp.task('html', function () {
  return gulp.src(src('html/**/*.html'))
    .pipe(gulp.dest(dest()));
});

gulp.task('css', function () {
  return gulp.src(src('css/**/*.css'))
    .pipe(gulp.dest(dest('css')));
});

gulp.task('js', function () {
  return gulp.src(src('js/**/*.js'))
    .pipe(jshint())
    .pipe(jshint.reporter('jshint-stylish'))
    .pipe(gulp.dest(dest('js')));
});

gulp.task('vendor', function () {
  return gulp.src([
      bower('requirejs', 'require.js'),
      bower('es5-shim', 'es5-shim.js'),
      bower('es5-shim', 'es5-sham.js'),
      bower('jquery', 'dist/jquery.js'),
      bower('flight', '**/*.js'),
    ])
    .pipe(gulp.dest(dest('vendor')))
});

gulp.task('default', ['html', 'css', 'js', 'vendor']);
