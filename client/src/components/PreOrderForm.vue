<template>
  <section class="h-160 w-160 bg-white rounded-[3rem]">
    <form class="pre-order-form">
    <!-- <fieldset>'s' for line splitting and grouping -->
      <h3 class="text-center mb-4">Pre-Order Form</h3>

      <label for="product">Product:</label>
      <select name="product_type" id="product_type">
        <option value="">--select product--</option>
        <option value="vanilla_cake">vanilla cake</option>
        <option value="chocolate_cake">chocolate cake</option>
        <option value="pecan_cookies">pecan cookies</option>
      </select>

      <label for="image">Photo or Sketch:</label>
      <input type="file" name="image" id="image" />

      <label for="name">Name:</label>
      <input type="text" name="name" id="name" />

      <label for="number">Contact Number:</label>
      <input type="number" name="number" id="number" />

      <label for="email">Email</label>
      <input type="email" name="email" id="email" />

      <label for="date">Event Date:</label>
      <input type="date" name="date" id="date" />

      <label for="notes">Additional Notes:</label>
      <input type="text" name="notes" id="notes" />

      <!-- add sumbit button -->
    </form>
  </section>
</template>
