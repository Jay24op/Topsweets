<template>
  <header class="header">
    <!-- logo -->
    <section class="logo-container">
      <a href="#">
        <img src="../assets/TSUB_logo.jpg" alt="logo" class="logo-image" />
      </a>
    </section>
    <!-- title -->
    <!-- <h1 id="short-name">TSUB</h1> -->
    <h1 class="title-shadow">Top Sweets Unique Bakery</h1>

    <!-- navagation-bar -->
    <nav class="nav-full">
      <!-- nav-sidebar for sidebar-->
      <router-link :to="{ name: 'Home' }">home</router-link>
      <a href="">products</a>
      <a href="">about us</a>
      <a href="">register</a>
      <i>/</i>
      <a href="">login</a>
    </nav>
    
    <!-- <section class="icon">
      <svg id="menu">
        <use xlink:href="../assets/sprite.svg#menu"></use>
      </svg>
    </section> -->
  </header>
</template>
