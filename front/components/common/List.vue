<template>
    <div class="main-content">
      <div class="wrapper">
        <ul class="list">
            <slot name="list"></slot>
        </ul>
      </div>
    </div>
</template>

<style scoped>
.main-content{
  display: flex;
  width:100%;
  padding-top:50px;
  margin: 0 auto;
  align-items: stretch;
}
.wrapper{
  min-width:1000px;
  padding: 1em 3em;
  /* background-color: orangered; */
  margin: 0 auto;
}
.list{
  text-align: left;
  max-width: 100%;
}
</style>