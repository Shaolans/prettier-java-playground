<template>
  <div class="code-area row">
    <div class="code col">
      <textarea v-model="code" rows="35"></textarea>
    </div>
    <div class="result col">
      <textarea rows="35" readonly v-model="prettify"></textarea>
    </div>
  </div>
</template>

<script>
import prettier from 'prettier/standalone'
import prettierPluginJava from 'prettier-plugin-java'

export default {
  name: 'CodeArea',
  data () {
    return {
      code: '',
      result: '',
      cst: {}
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
  textarea {
      width: 100%;
      height: auto;
      -webkit-box-sizing: border-box; /* Safari/Chrome, other WebKit */
      -moz-box-sizing: border-box;    /* Firefox, other Gecko */
      box-sizing: border-box;         /* Opera/IE 8+ */
  }
</style>
