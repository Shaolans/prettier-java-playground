<template>
  <div class="code-area row">
    <div class="col-6 row">
      <LineCount class="counter col-1" :code="code"></LineCount>  
      <textarea class="col" rows="35" v-model="code"></textarea>
    </div>

    <div class="col-6 row">
      <LineCount class="counter col-1" :code="prettify"></LineCount>
      <textarea class="col" rows="35" readonly v-model="prettify"></textarea>
    </div>

  </div>
</template>

<script>
import prettier from 'prettier/standalone'
import prettierPluginJava from 'prettier-plugin-java'
import LineCount from './LineCount'

export default {
  name: 'CodeArea',
  components: {
    LineCount
  },
  data () {
    return {
      code: '',
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
