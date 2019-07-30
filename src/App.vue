<template>
  <div id="app">
    <Navbar></Navbar>
    <CodeArea></CodeArea>
  </div>
</template>

<script>
import Navbar from './components/Navbar.vue'
import CodeArea from './components/CodeArea.vue'

export default {
  name: 'App',
  components: {
    Navbar,
    CodeArea
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
</style>
