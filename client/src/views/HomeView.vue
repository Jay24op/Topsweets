<template>
  <section class="hero-section">
    <section class="hero-wrapper">
      <section class="hero-content">
        <div class="h-116 w-116">
          <img
            src="../assets/hero_logo.png"
            alt="hero_logo"
            class="size-full"
          />
        </div>
        <div class="hero-message">
          <h4>
            Indulge in uniquely created treas for every occasion! From custom
            cakes to delightful pastries, we bake with love and creativity just
            for you!
          </h4>
        </div>
      </section>

      <PreOrderForm />
    </section>
  </section>
  <h2 class="text-pink">
    WELCOME ... THANK YOU FOR VISITING, WE ARE UNDER CONSTRUCTION!
  </h2>
  <h2 class="text-blue">I HOPE YOU ARE ENJOYING WHAT YOU SEE THUS FAR!</h2>
</template>

<script>
import PreOrderForm from "../components/PreOrderForm.vue";

export default {
  components: {
    PreOrderForm,
  },
};
</script>
