<template>
  <div class="code-area row">
    <div class="editor col-6 nopadding">
      <Editor lang="java" theme="chrome" width="100%" v-model="code" v-bind:options="optionCode"></Editor>
    </div>

    <div class="editor col-6 nopadding">
      <Editor lang="java" theme="chrome" width="100%" v-model="prettify" v-bind:options="optionRes"></Editor>
    </div>
  </div>
</template>

<script>
import prettier from 'prettier/standalone'
import prettierPluginJava from 'prettier-plugin-java'
import Editor from 'vue2-ace-editor'
import 'brace/ext/language_tools'
import 'brace/mode/html'
import 'brace/mode/java'
import 'brace/mode/less'
import 'brace/theme/chrome'
import 'brace/snippets/java'

export default {
  name: 'CodeArea',
  components: {
    Editor
  },
  data () {
    return {
      code: '',
      cst: {},
      optionCode: {
        fontSize: '16px',
        enableBasicAutocompletion: true,
        maxLines: 1000
      },
      optionRes: {
        readOnly: true,
        fontSize: '16px',
        maxLines: 1000
      }
    }
  },
  computed: {
    prettify: function () {
      try {
        return prettier.format(this.code, {
          parser: 'java',
          plugins: [prettierPluginJava],
          tabWidth: 2
        })
      } catch (e) {
        return e.toString()
      }
    }
  }
}
</script>

<style scoped>
  .nopadding {
    padding: 0 !important;
    margin: 0 !important;
  }

  .editor {
    height: auto;
  }
</style>
