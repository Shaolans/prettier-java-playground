<template>
  <div class="counter">
    <div v-for="nb in lineCount" v-bind:key="nb">
      {{ nb }} <br>
    </div>
  </div>
</template>

<script>
export default {
  name: 'LineCount',
  props: {
    code: String
  },
  data () {
    return {
    }
  },
  computed: {
    lineCount: function () {
      return this.code.length ? this.code.split(/\r\n|\r|\n/).length : 0
    }
  }
}
</script>

<style scoped>
  .counter {
    background: #edebeb
  }
</style>
