<template>
  <div class="navbar row">
    <div class="nav-item logo-wrapper col-md-5 col-6 row">
      <img class="logo" src="../assets/prettier-logo.svg">
      <a style="color:white" href="https://github.com/jhipster/prettier-java/"><span class="align-middle" style="font-size:18px;">Prettier-java</span></a>
      <a href="https://www.npmjs.com/package/prettier-plugin-java"><span id="version">v.{{version}}</span></a>
    </div>

    <div class="nav-item col-md-2 col-6">
      <a href="https://www.jhipster.tech/">
        <img class="jh-logo" src="../assets/JHipster-logo.png">
      </a>
    </div>

    <div class="nav-item github col-md-5 col-12">
      <div class="float-right">
        <gh-btns-watch slug="jhipster/prettier-java" show-count></gh-btns-watch>
        <gh-btns-star slug="jhipster/prettier-java" show-count></gh-btns-star>
        <gh-btns-fork slug="jhipster/prettier-java" show-count></gh-btns-fork>
      </div>
    </div>
  </div>
</template>

<script>
import prettierJavaJson from '../../node_modules/prettier-plugin-java/package.json'

export default {
  name: 'Navbar',
  data () {
    return {
      version: prettierJavaJson.version
    }
  }
}
</script>

<style scoped>

  h1 {
    font-size: 20px;
    color: #fff;
  }

  .row-2 {
    padding-top: 0.75%;
    padding-bottom: 0.75%;
  }

  .logo-wrapper>* {
    padding-right: 0.35%;
    padding-left: 0.35%;
    margin-top: auto;
    margin-bottom: auto;
  }

  .logo-wrapper {
    margin-left: 0.25%;
  }

  .jh-logo {
    width: 60%;
    height: 60%;
  }

  .navbar {
    background-color: #1a2b34;
    min-height: 10%;
  }

  .logo {
    height: 4%;
    width: 4%;
  }

  #version {
    color:#6a6a6a;
    font-size: 10px;
  }

</style>
