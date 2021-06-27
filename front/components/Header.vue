<template>
  <div class="header" aria-posinset="">
    <div class="logo">
      logo
    </div>
    <div class="nav">
      <v-btn color="light-green" elevation="10" class="login">login</v-btn>
      <v-btn color="light-green" elevation="10" class="signup">signup</v-btn>
    </div>
  </div>
</template>
    
<script>
// import Button from 'common/new-button.vue' 

// export default {
//     components: {
//     Button
//   }
// }


</script>

<style  scoped>
.logo{
  position: absolute;
  left: 40px;
  top: 20px;
}
.header{
  z-index:2;
  position: fixed;
  width: 100%;
  height: 80px;  
  background-color: #324851;
}
.nav{
  margin: 17px 20px;
  float: right;
}
.login{
  margin-right: 20px;
}

</style>
