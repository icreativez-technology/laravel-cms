/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!*******************************************************!*\
  !*** ./platform/themes/nest/assets/js/icons-field.js ***!
  \*******************************************************/
$(document).ready(function () {
  'use strict';

  var icons = ['fi-rs-add', 'fi-rs-alarm-clock', 'fi-rs-align-center', 'fi-rs-align-justify', 'fi-rs-align-left', 'fi-rs-align-right', 'fi-rs-ambulance', 'fi-rs-angle-double-left', 'fi-rs-angle-double-right', 'fi-rs-angle-double-small-left', 'fi-rs-angle-double-small-right', 'fi-rs-angle-down', 'fi-rs-angle-left', 'fi-rs-angle-right', 'fi-rs-angle-small-down', 'fi-rs-angle-small-left', 'fi-rs-angle-small-right', 'fi-rs-angle-small-up', 'fi-rs-angle-up', 'fi-rs-apps-add', 'fi-rs-apps-delete', 'fi-rs-apps-sort', 'fi-rs-apps', 'fi-rs-archive', 'fi-rs-arrow-down', 'fi-rs-arrow-left', 'fi-rs-arrow-right', 'fi-rs-arrow-small-down', 'fi-rs-arrow-small-left', 'fi-rs-arrow-small-right', 'fi-rs-arrow-small-up', 'fi-rs-arrow-up', 'fi-rs-asterisk', 'fi-rs-backpack', 'fi-rs-badge', 'fi-rs-ban', 'fi-rs-band-aid', 'fi-rs-bank', 'fi-rs-barber-shop', 'fi-rs-baseball', 'fi-rs-basketball', 'fi-rs-bell-ring', 'fi-rs-bell-school', 'fi-rs-bell', 'fi-rs-billiard', 'fi-rs-bold', 'fi-rs-book-alt', 'fi-rs-book', 'fi-rs-bookmark', 'fi-rs-bowling', 'fi-rs-box-alt', 'fi-rs-box', 'fi-rs-briefcase', 'fi-rs-broom', 'fi-rs-browser', 'fi-rs-brush', 'fi-rs-bug', 'fi-rs-building', 'fi-rs-bulb', 'fi-rs-calculator', 'fi-rs-calendar', 'fi-rs-camera', 'fi-rs-caret-down', 'fi-rs-caret-left', 'fi-rs-caret-right', 'fi-rs-caret-up', 'fi-rs-check', 'fi-rs-checkbox', 'fi-rs-chess', 'fi-rs-circle-small', 'fi-rs-circle', 'fi-rs-clip', 'fi-rs-clock', 'fi-rs-cloud-check', 'fi-rs-cloud-disabled', 'fi-rs-cloud-download', 'fi-rs-cloud-share', 'fi-rs-cloud-upload', 'fi-rs-cloud', 'fi-rs-comment-alt', 'fi-rs-comment', 'fi-rs-compress-alt', 'fi-rs-compress', 'fi-rs-computer', 'fi-rs-cookie', 'fi-rs-copy-alt', 'fi-rs-copy', 'fi-rs-copyright', 'fi-rs-cream', 'fi-rs-credit-card', 'fi-rs-cross-circle', 'fi-rs-cross-small', 'fi-rs-cross', 'fi-rs-crown', 'fi-rs-cursor-finger', 'fi-rs-cursor-plus', 'fi-rs-cursor-text-alt', 'fi-rs-cursor-text', 'fi-rs-cursor', 'fi-rs-dart', 'fi-rs-dashboard', 'fi-rs-data-transfer', 'fi-rs-database', 'fi-rs-delete', 'fi-rs-diamond', 'fi-rs-dice', 'fi-rs-diploma', 'fi-rs-disk', 'fi-rs-doctor', 'fi-rs-document-signed', 'fi-rs-document', 'fi-rs-dollar', 'fi-rs-download', 'fi-rs-duplicate', 'fi-rs-e-learning', 'fi-rs-earnings', 'fi-rs-edit-alt', 'fi-rs-edit', 'fi-rs-envelope', 'fi-rs-euro', 'fi-rs-exclamation', 'fi-rs-expand', 'fi-rs-eye-crossed', 'fi-rs-eye-dropper', 'fi-rs-eye', 'fi-rs-feather', 'fi-rs-file-add', 'fi-rs-file-ai', 'fi-rs-file-check', 'fi-rs-file-delete', 'fi-rs-file-eps', 'fi-rs-file-gif', 'fi-rs-file-music', 'fi-rs-file-psd', 'fi-rs-file', 'fi-rs-fill', 'fi-rs-film', 'fi-rs-filter', 'fi-rs-fingerprint', 'fi-rs-flag', 'fi-rs-flame', 'fi-rs-flip-horizontal', 'fi-rs-folder-add', 'fi-rs-folder', 'fi-rs-following', 'fi-rs-football', 'fi-rs-form', 'fi-rs-forward', 'fi-rs-ftp', 'fi-rs-gallery', 'fi-rs-glasses', 'fi-rs-globe-alt', 'fi-rs-globe', 'fi-rs-golf', 'fi-rs-graduation-cap', 'fi-rs-graphic-tablet', 'fi-rs-grid-alt', 'fi-rs-grid', 'fi-rs-gym', 'fi-rs-headphones', 'fi-rs-headset', 'fi-rs-heart', 'fi-rs-home', 'fi-rs-hourglass-end', 'fi-rs-hourglass', 'fi-rs-ice-skate', 'fi-rs-id-badge', 'fi-rs-inbox', 'fi-rs-incognito', 'fi-rs-indent', 'fi-rs-infinity', 'fi-rs-info', 'fi-rs-interactive', 'fi-rs-interlining', 'fi-rs-interrogation', 'fi-rs-italic', 'fi-rs-jpg', 'fi-rs-key', 'fi-rs-keyboard', 'fi-rs-label', 'fi-rs-laptop', 'fi-rs-lasso', 'fi-rs-layers', 'fi-rs-layout-fluid', 'fi-rs-letter-case', 'fi-rs-life-ring', 'fi-rs-line-width', 'fi-rs-link', 'fi-rs-lipstick', 'fi-rs-list-check', 'fi-rs-list', 'fi-rs-location-alt', 'fi-rs-lock-alt', 'fi-rs-lock', 'fi-rs-magic-wand', 'fi-rs-makeup-brush', 'fi-rs-marker-time', 'fi-rs-marker', 'fi-rs-medicine', 'fi-rs-megaphone', 'fi-rs-menu-burger', 'fi-rs-menu-dots-vertical', 'fi-rs-menu-dots', 'fi-rs-microphone', 'fi-rs-minus-small', 'fi-rs-minus', 'fi-rs-mobile', 'fi-rs-mode-landscape', 'fi-rs-mode-portrait', 'fi-rs-money', 'fi-rs-mouse', 'fi-rs-music-alt', 'fi-rs-music', 'fi-rs-network-cloud', 'fi-rs-network', 'fi-rs-notebook', 'fi-rs-opacity', 'fi-rs-package', 'fi-rs-paint-brush', 'fi-rs-palette', 'fi-rs-paper-plane', 'fi-rs-password', 'fi-rs-pause', 'fi-rs-pencil', 'fi-rs-pharmacy', 'fi-rs-physics', 'fi-rs-picture', 'fi-rs-ping-pong', 'fi-rs-play-alt', 'fi-rs-play', 'fi-rs-playing-cards', 'fi-rs-plus-small', 'fi-rs-plus', 'fi-rs-poker-chip', 'fi-rs-portrait', 'fi-rs-pound', 'fi-rs-power', 'fi-rs-presentation', 'fi-rs-print', 'fi-rs-protractor', 'fi-rs-pulse', 'fi-rs-quote-right', 'fi-rs-rec', 'fi-rs-receipt', 'fi-rs-rectangle-horizontal', 'fi-rs-rectangle-panoramic', 'fi-rs-rectangle-vertical', 'fi-rs-redo', 'fi-rs-reflect', 'fi-rs-refresh', 'fi-rs-resize', 'fi-rs-resources', 'fi-rs-rewind', 'fi-rs-rocket', 'fi-rs-rotate-right', 'fi-rs-rugby', 'fi-rs-scale', 'fi-rs-school-bus', 'fi-rs-school', 'fi-rs-scissors', 'fi-rs-screen', 'fi-rs-search-alt', 'fi-rs-search', 'fi-rs-settings-sliders', 'fi-rs-settings', 'fi-rs-share', 'fi-rs-shield-check', 'fi-rs-shield-exclamation', 'fi-rs-shield-interrogation', 'fi-rs-shield-plus', 'fi-rs-shield', 'fi-rs-shop', 'fi-rs-shopping-bag-add', 'fi-rs-shopping-bag', 'fi-rs-shopping-cart-add', 'fi-rs-shopping-cart-check', 'fi-rs-shopping-cart', 'fi-rs-shuffle', 'fi-rs-sign-in', 'fi-rs-sign-out', 'fi-rs-signal-alt-1', 'fi-rs-signal-alt-2', 'fi-rs-signal-alt', 'fi-rs-skateboard', 'fi-rs-smartphone', 'fi-rs-soap', 'fi-rs-spa', 'fi-rs-speaker', 'fi-rs-spinner-alt', 'fi-rs-spinner', 'fi-rs-square-root', 'fi-rs-square', 'fi-rs-star', 'fi-rs-stats', 'fi-rs-stethoscope', 'fi-rs-sticker', 'fi-rs-stop', 'fi-rs-stopwatch', 'fi-rs-subtitles', 'fi-rs-surfing', 'fi-rs-sword', 'fi-rs-syringe', 'fi-rs-tablet', 'fi-rs-target', 'fi-rs-tennis', 'fi-rs-test-tube', 'fi-rs-test', 'fi-rs-text-check', 'fi-rs-text', 'fi-rs-thumbs-down', 'fi-rs-thumbs-up', 'fi-rs-ticket', 'fi-rs-time-add', 'fi-rs-time-check', 'fi-rs-time-delete', 'fi-rs-time-fast', 'fi-rs-time-forward-sixty', 'fi-rs-time-forward-ten', 'fi-rs-time-forward', 'fi-rs-time-half-past', 'fi-rs-time-oclock', 'fi-rs-time-past', 'fi-rs-time-quarter-past', 'fi-rs-time-quarter-to', 'fi-rs-time-twenty-four', 'fi-rs-tool-crop', 'fi-rs-tool-marquee', 'fi-rs-tooth', 'fi-rs-transform', 'fi-rs-trash', 'fi-rs-treatment', 'fi-rs-trophy', 'fi-rs-umbrella', 'fi-rs-underline', 'fi-rs-undo', 'fi-rs-unlock', 'fi-rs-upload', 'fi-rs-usb-drive', 'fi-rs-user-add', 'fi-rs-user-delete', 'fi-rs-user-remove', 'fi-rs-user-time', 'fi-rs-user', 'fi-rs-users', 'fi-rs-vector-2', 'fi-rs-vector-alt', 'fi-rs-video-camera', 'fi-rs-volleyball', 'fi-rs-volume', 'fi-rs-wifi-alt', 'fi-rs-world', 'fi-rs-yen', 'fi-rs-zoom-in', 'fi-rs-zoom-out'];
  var initIconsField = function initIconsField() {
    $('.icon-select').each(function (index, el) {
      var value = $(el).children('option:selected').val();
      var options = '<option value="">' + $(el).data('empty') + '</option>';
      icons.forEach(function (value) {
        options += '<option value="' + value + '">' + value + '</option>';
      });
      $(el).html(options);
      $(el).val(value);
      var select2Options = {
        templateResult: function templateResult(state) {
          if (!state.id) {
            return state.text;
          }
          return $('<span><i class="' + state.id + '"></i></span>&nbsp; ' + state.text + '</span>');
        },
        width: '100%',
        templateSelection: function templateSelection(state) {
          if (!state.id) {
            return state.text;
          }
          return $('<span><i class="' + state.id + '"></i></span>&nbsp; ' + state.text + '</span>');
        }
      };
      var parent = $(el).closest('.modal');
      if (parent.length) {
        select2Options.dropdownParent = parent;
      }
      $(el).select2(select2Options);
    });
  };
  initIconsField();
  document.addEventListener('core-init-resources', function () {
    initIconsField();
  });
});
/******/ })()
;