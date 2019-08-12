// import ace from "ace-builds/src-noconflict/ace";
// import "ace-builds/src-noconflict/mode-javascript"
// import "ace-builds/webpack-resolver";

import * as ace from 'brace';
import 'brace/mode/ruby';
import 'brace/theme/twilight';

$(document).on('turbolinks:load', function() {
  console.log('Hello World from Webpacker')
  if ($("#code-editor").length > 0) {
    var editor = ace.edit("code-editor");
    editor.session.setMode("ace/mode/ruby");

    var input = $('#solution_code');
    editor.getSession().on("change", function () {
        input.val(editor.getSession().getValue());
    });
    editor.setTheme("ace/theme/twilight");
  }
});