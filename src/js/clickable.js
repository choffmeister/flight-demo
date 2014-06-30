define(['jquery', 'flight/component'], function ($, defineComponent) {
  return defineComponent(clickable);

  function clickable() {
    this.toggleColor = function () {
      this.$node.toggleClass('colored');
    };

    this.after('initialize', function () {
      this.on('click', this.toggleColor);
    });

    this.before('teardown', function () {
      this.off('click', this.toggleColor);
    });
  }
});
