
<!-- default.vue -->
<template>
  <div class="slidev-layout default cover center">
    <slot />
    <div class="bottom-right-box" />
  </div>
</template>

<style>
.cover {
    background-image: url("/header_upper_left.svg");
    background-repeat: no-repeat;
    margin: auto;
}
.center {
  display: flex;
  justify-content: center;
}
.bottom-right-box {
    width: 2rem;
    height: 2rem;
    background: #19204c;
    position: absolute;
    right: 0;
    bottom: 0;
}

img {
  width: 500px;
  margin: auto;
}
</style>
