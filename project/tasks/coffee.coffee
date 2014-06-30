gulp = require("gulp")
gutil = require("gulp-util")
config = require("../config")
livereload = require("gulp-livereload")
gif = require("gulp-if")
coffee = require("gulp-coffee")
concat = require("gulp-concat")
uglify = require("gulp-uglify")

gulp.task "coffee", ->
  gulp.src(config.src + "coffee/**/*.coffee")
    .pipe(coffee(
      bare: true
    ))
    .on("error", (err) ->
      gutil.log(err)
      gutil.beep()
      this.end()
    )
    .pipe(gif(not config.debug, uglify()))
    .pipe(gulp.dest(config.dest))
    .pipe(livereload({ auto: false }))
