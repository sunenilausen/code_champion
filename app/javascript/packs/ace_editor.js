// import ace from "ace-builds/src-noconflict/ace";
// import "ace-builds/src-noconflict/mode-javascript"
// import "ace-builds/webpack-resolver";

import * as ace from 'brace';
import 'brace/mode/ruby';
import 'brace/theme/twilight';

import Blockly from 'blockly';
import * as Da from 'blockly/msg/da';
Blockly.setLocale(Da);

$(document).on('turbolinks:load', function() {
  if ($("#code-editor").length > 0) {
    var editor = ace.edit("code-editor");
    editor.session.setMode("ace/mode/ruby");

    var input = $('#solution_code');
    editor.getSession().on("change", function () {
        input.val(editor.getSession().getValue());
    });
    editor.setTheme("ace/theme/twilight");

    if ($("#blocklyDiv").length > 0) {
      var workspace = Blockly.inject('blocklyDiv', {media: '../../media/', toolbox: document.getElementById('toolbox')});
      var xml = Blockly.Xml.textToDom($('#solution_block_xml').val());
      Blockly.Xml.domToWorkspace(xml, workspace);

      function myUpdateFunction(event) {
        var code = Blockly.JavaScript.workspaceToCode(workspace);
        var new_xml = Blockly.Xml.workspaceToDom(workspace);
        var xml_text = Blockly.Xml.domToText(new_xml);
        $("#solution_block_xml").val(xml_text)
        editor.session.setValue(code)
      }
      workspace.addChangeListener(myUpdateFunction);
    }
  }
});