<template>
  <Navagation />
  <main>
    <router-view />
  </main>
</template>

<script>
import Navagation from "./components/NavBar.vue";
import HelloWorld from "./components/HelloWorld.vue";
export default {
  components: { Navagation, HelloWorld },
};
</script>
