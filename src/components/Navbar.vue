<template>
  <div class="navbar row-lg-1">
    <div class="logo-wrapper col row">
      <img class="logo" src="../assets/prettier-logo.svg">
      <h1>Prettier-java</h1>
      <span id="version">v.0.3.1</span>
    </div>

    <div class="github">
      <gh-btns-watch slug="jhipster/prettier-java" show-count></gh-btns-watch>
      <gh-btns-star slug="jhipster/prettier-java" show-count></gh-btns-star>
      <gh-btns-fork slug="jhipster/prettier-java" show-count></gh-btns-fork>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Navbar'
}
</script>

<style scoped>

  h1 {
    font-size: 20px;
    color: #fff;
  }

  .row-lg-1 {
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


  .navbar {
    background-color: #1a2b34;
    min-height: 10%;
  }

  .logo {
    height: 2.75%;
    width: 2.75%;
  }

  #version {
    color:#6a6a6a;
    font-size: 10px;
  }

</style>
