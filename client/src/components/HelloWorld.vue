<script setup>
import { ref } from "vue";

defineProps({
  msg: String,
});

const count = ref(0);
</script>

<template>
  <h1>{{ msg }}</h1>
  <h2>Vue successfully added!</h2>

  <div class="card">
    <button type="button" @click="count++">count is {{ count }}</button>
  </div>

  <p>Exciting new updates are coming!!!</p>
  <p>GET READYYY!!!</p>

  <p>routing in progress!!!</p>
  <p>
    Check out our
    <router-link :to="{ name: 'Home' }">HOME ROUTE</router-link>!!!
  </p>
</template>

<style scoped>
.read-the-docs {
  color: #888;
}
</style>
