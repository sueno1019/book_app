<template>
  <v-app dark>
    <v-content>
      <v-container fluid>
        <Header/>
        <nuxt class="main" />
      </v-container>
    </v-content>
    <v-footer
      :fixed="fixed"
      app
    >
      <span>&copy; {{ new Date().getFullYear() }}</span>
    </v-footer>
  </v-app>
</template>

<script>
import Header from "@/components/Header"

export default {
  data () {
    return {
      clipped: false,
      drawer: false,
      fixed: false,
      items: [
        {
          icon: 'mdi-apps',
          title: 'Welcome',
          to: '/'
        },
        {
          icon: 'mdi-chart-bubble',
          title: 'Inspire',
          to: '/inspire'
        }
      ],
      miniVariant: false,
      right: true,
      rightDrawer: false,
      title: 'Vuetify.js'
    }
  },
  components: {
    Header
  }
}
</script>

<style scoped>
@import "@/assets/style/reset.css";
.container{
  width: 100%;
  margin: 0　auto;
}
.main{
  width: 100%;
  line-height: 0;
  font-size: 0;
}
</style>