<template>
  <header class="header">
    <!-- logo -->
     <!-- turn anchors to route links and dynamically change code -->
    <section class="logoContent">
      <a href="#">
        <img src="../assets/TSUB_logo.jpg" alt="logo" />
      </a>
    </section>
    <!-- title -->
    <h1 id="short-name">TSUB</h1>
    <h1 id="full-name">Top Sweets Unique Bakery</h1>

    <!-- navagation-bar -->
    <nav class="navbar">
      <a href="#home">home</a>
      <a href="#product">products</a>
      <a href="">services</a>
      <a href="">about us</a>
      <a href="">reviews</a>
      <a href="">settings</a>
    </nav>
    <div class="icon">
      <svg id="menu">
        <use xlink:href="../assets/sprite.svg#menu"></use>
      </svg>
    </div>
  </header>
</template>

<style>
.header {
  display: flex;
  align-items: center;
  justify-content: space-between;
  position: fixed;
  top: 0;
  right: 0;
  left: 0;
  height: var(--nav-height);
  padding: 0 5%;
  z-index: 99;
  background-color: var(--nav);
}
.logoContent {
  cursor: pointer;
  transition: transform 0.5s;
}
.logoContent img,
.icon svg {
  height: 7.5rem;
}
.logoContent:hover {
  transform: scale(1.05);
}
#short-name {
  display: none;
  font-size: 3.5rem;
  color: var(--pink);
  text-shadow: 0.05rem 0.05rem 0.4rem var(--blue);
}
#full-name {
  text-align: center;
  color: var(--pink);
  text-shadow: 0.05rem 0.05rem 0.4rem var(--blue);
}
.navbar {
  position: absolute;
  top: 100%;
  right: -100%;
  width: 20rem;
  height: 65vh;
  background-color: #fff;
  border-bottom-left-radius: 1rem;
}
.navbar a {
  font-size: 2rem;
  font-weight: 500;
  color: var(--black);
  margin-right: 1rem;
}
.navbar a:hover {
  border-bottom: 0.25rem solid var(--brown);
}
.icon svg {
  fill: var(--black);
  cursor: pointer;
  width: 5.5rem;
  padding: 0.5rem;
  transition: all 0.15s;
}
.icon svg:hover {
  border: 2px solid var(--blue);
  border-radius: 1rem;
}
.icon #menu {
  display: inline-block;
}
/* navbar appears onclick */
.navbar.active {
  right: 0;
}
</style>
