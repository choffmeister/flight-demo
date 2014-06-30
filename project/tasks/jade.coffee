gulp = require("gulp")
config = require("../config")
livereload = require("gulp-livereload")
jade = require("gulp-jade")

gulp.task "jade", ->
  gulp.src(config.src + "jade/**/*.jade")
    .pipe(jade(
      pretty: config.debug
    ))
    .pipe(gulp.dest(config.dest))
    .pipe(livereload({ auto: false }))
